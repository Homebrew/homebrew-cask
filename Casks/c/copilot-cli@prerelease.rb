cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.90-2"
  sha256 arm:          "1d99b24a2d5fd3d92139710377d7b4e87b3b20dfe0575ee33be6cb58e7b90659",
         intel:        "713f88ed1cc952fbd18c53dfa4a27cad068af03ee559a32a9ec7522e82c3cb4e",
         arm64_linux:  "795c0c450260669ae50fff43604d99aca51b9f0fe8f377ff9bb84114b7e5fe4c",
         x86_64_linux: "d02a066a87d848cce054fc95907de0b65fcfb074f7fdae59e03b48a0c80aabaa"

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
