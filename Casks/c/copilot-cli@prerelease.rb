cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-10"
  sha256 arm:          "799a1bed7c725e1281945506e96f6b531dfca5bc4261139ff3b8f9d4dadea10a",
         intel:        "78ca157526fbd85de240aec8f0e34c4d2ce941ba56e53db9f3337a13aa09dde1",
         arm64_linux:  "10c63beaf2aa457e86dd1b1b5281a34f2042e22b3d9e1a84551ac7e1e4135c67",
         x86_64_linux: "ce49329b0ce24b54a6534a85da8fe5c74c07a2788c923ce1c919ddc81851daf3"

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
