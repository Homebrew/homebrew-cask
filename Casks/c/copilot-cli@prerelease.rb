cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-5"
  sha256 arm:          "3da47453c7931d826f9e0d331caec278eaaaeaab5e2e56dece9239142cf99b23",
         intel:        "9aa33c76c0c39868aa36ad0d120426ac26d8535f4f1603e246afcd3f2cc2fb34",
         arm64_linux:  "48e07bdc5ad6f0f73a6da076a7710e902362854018fb0b8c4f029b65e0ed5e6f",
         x86_64_linux: "b1e6895d82c4ca05e9cc770ea3b6071ba856de4aee43a242f7d82a3f9b4089d3"

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
