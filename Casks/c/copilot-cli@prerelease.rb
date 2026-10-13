cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.97-2"
  sha256 arm:          "1ce87b3aa4b54b44be13c2c8eca9e2c9b341655c7fbcd39cf1f9bca05e2350ee",
         intel:        "79ad816e8edfba80a7f177a1577ffeb7246de882ee4882a1ca002eb530a3f99d",
         arm64_linux:  "67787450c9b8bbe44add68e0d1c0fa73413a948ab393c6e8f9ce243f3c91384d",
         x86_64_linux: "1813688f8519322b677c995e40198da4fd09cd5d2bd520c4b00095b51b0087d5"

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
