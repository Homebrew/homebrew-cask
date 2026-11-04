cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-7"
  sha256 arm:          "27f0855da6ae4943f5ef5dae06170794c07e9cc65f309634d4cc2140584b55e1",
         intel:        "598fbd434e6c8156e70b1b38a26d542e6e882b7230cc7e4b0be83324bfcd3a63",
         arm64_linux:  "ab20cf5ca2df7b029226993f3ec3ffebd96307c050de38aedc385c6e6ff7e54b",
         x86_64_linux: "fd280ba0ae042c03db2d99ad43fa3aa913e9ba69833dd8e6cc45360e3585f05f"

  on_macos do
    depends_on macos: :ventura
  end

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

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
