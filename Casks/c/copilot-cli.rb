cask "copilot-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.0.105"
  sha256 arm:          "34aacd03fb478d47e4b3cfc5ca045c37278c5d8d86239466521a16ea54ac84aa",
         intel:        "de5684eeb118ad1e54f9a01f4535cf74e121b8226d26473550b01a7565ce54f5",
         arm64_linux:  "e7b488cc04ac3e2ed800e1bf0aace33ada42dcf167529b3d2f48a61e1535a847",
         x86_64_linux: "aba1f06f27bc0447656647f76e0a4cf58b4b2a341c75ff04a750982b6aeb6bd2"

  on_macos do
    depends_on macos: :ventura
  end

  url "https://github.com/github/copilot-cli/releases/download/v#{version}/copilot-#{os}-#{arch}.tar.gz"
  name "GitHub Copilot CLI"
  desc "Brings the power of Copilot coding agent directly to your terminal"
  homepage "https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "copilot-cli@prerelease"

  binary "copilot"
  generate_completions_from_executable "copilot", "completion"

  zap trash: [
    "~/.copilot",
    "~/Library/Caches/copilot",
  ]
end
