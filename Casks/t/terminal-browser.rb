cask "terminal-browser" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.8.1"
  sha256 arm:          "3b0e034d557986ab9289aa8baefdca5c3eb66aa493e27110f4e82c05f224a738",
         intel:        "51645cfdf0428b439434776b5c2c21e50ea1200ea618c742cb3f5d65717f79dd",
         arm64_linux:  "7f90d97003eedd6ac62e61c82290ffd280f2f0e8f266911f70ab0fbac8a102fe",
         x86_64_linux: "35e78089d1089dc4f492bbd7d2a03d57ed5543b4394b4fddf3be57c75b77747e"

  url "https://terminal-browser.sh/install/dl/stable/v#{version}/terminal-browser-#{os}-#{arch}.tar.gz"
  name "terminal-browser"
  desc "Terminal-based web browser"
  homepage "https://terminal-browser.com/"

  livecheck do
    url "https://terminal-browser.sh/install/latest.json"
    strategy :json do |json|
      json["version"]&.delete_prefix("v")
    end
  end

  binary "terminal-browser/bin/terminal-browser"

  zap trash: [
    "~/.agents/skills/terminal-browser",
    "~/.cache/terminal-browser-*",
    "~/.claude/skills/terminal-browser",
    "~/.codex/skills/terminal-browser",
    "~/.cursor/skills/terminal-browser",
    "~/.gemini/skills/terminal-browser",
    "~/.local/share/terminal-browser-*",
    "~/.local/state/terminal-browser",
    "~/.local/state/terminal-browser-*",
  ]
end
