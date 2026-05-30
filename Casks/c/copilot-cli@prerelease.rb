cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.57-2"
  sha256 arm:          "9b56869290d6848f6572bf90dfaa2caf246e5d9030b46c692efbbf475dd902a1",
         intel:        "6a2773f365abce113c7750413efcbf14917f0f5c6bc5bbc43855b59ffd8a48d8",
         arm64_linux:  "dc729242979f5b7554dc7c0817e2746ff4c780a1e984d59d4ce073e61cea2e06",
         x86_64_linux: "8afadc3e4da0477b3df971a162873f082ad371c040dfdd8e1163590a00da562a"

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
