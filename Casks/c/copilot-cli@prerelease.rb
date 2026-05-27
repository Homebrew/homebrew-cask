cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :ventura
  end

  version "1.0.55-6"
  sha256 arm:          "6d7ff9c50563086cb706e5b98383907a161b6c159bec88671cc4c32f6a45afb6",
         intel:        "37a3f91d20422b7ce109cd2ad47102a324cc275091fef35b5b6c17c873e4b93d",
         arm64_linux:  "222477d9a8ae76f224a7df3d3d55db62f7cca0e0d16144dfdfba7a9e5dff09fb",
         x86_64_linux: "69c7fc720fbe74b9be36c1681bc13737b2fb593e6f2f36cfd2f399aa64613af4"

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
