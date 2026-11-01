cask "copilot-cli@prerelease" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.106-2"
  sha256 arm:          "36735f28c675c4985615a6b7a69b76a9be81f9b32b9577ca13f0d558d1872063",
         intel:        "054a8eaa8909540d6d5786277805576135a9eaa66a798560c27dbdadc2842f1c",
         arm64_linux:  "ce35ea052831951cc7ca97beba512e2c419880bbc8cf24dbf0188f45740b4112",
         x86_64_linux: "cd0e4e576d071cb042e33377b8b21d47dfa99cc982e143dd67e486d4368f5c9e"

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
