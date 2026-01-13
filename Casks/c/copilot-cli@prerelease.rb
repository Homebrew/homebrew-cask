cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.0.380"
  sha256 arm:          "8f2e565ff1ec9e732c2ba0022803a9440e3aebf0d89e2dbf9a7a2668e0001444",
         intel:        "a3b9d6fe70ee567dc00d19bd40c32e0bf23b5ee9e97c819a84949a20e312f1ce",
         arm64_linux:  "980cb3f31a7b4c571e39a8b5462f5887b9236894f867a29878947dc2ee814e88",
         x86_64_linux: "1001a7801b79b8be30a9828a7f778ad0e6bdca18d194be4619edb4ac854f2789"

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

  conflicts_with cask: "copilot-cli"
  depends_on macos: ">= :ventura"

  binary "copilot"

  zap trash: "~/.copilot"
end
