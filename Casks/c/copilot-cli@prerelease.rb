cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.74-4"
  sha256 arm:          "7625965e3f0dc9e884dc4bfba609d85f485a438b17c3b30e247cfc41d69bd335",
         intel:        "bf06b40fda4b6798bcb19726af63bae9477711c6ac9ca9f3731fc489b6409bde",
         arm64_linux:  "d1767802297f22e72e41ab81a6320f186b2e6d041d6ee5d7be28d37244beaaf4",
         x86_64_linux: "5757238608133bd638acb3b1fc9810c109a3ae5418dc2223bb4b4e6262b9edc7"

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "copilot-cli"

  binary "copilot"

  generate_completions_from_executable "copilot", "completion"

  zap trash: "~/.copilot"
end
