cask "petdex" do
  arch arm: "arm64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "02885442276100ecb52bb3151abe9df2b6a62e9857d70d648e705173d2853eb9",
         intel: "7f53237019edc213a431d28872cc819bb1758ba4301de1165a8eeb3ed56c32ac"

  url "https://github.com/crafter-station/petdex/releases/download/desktop-v#{version}/Petdex-#{arch}.dmg",
      verified: "github.com/crafter-station/petdex/"
  name "Petdex"
  desc "Desktop companion for Codex pets"
  homepage "https://petdex.crafter.run/"

  livecheck do
    url :url
    regex(%r{/desktop-v?(\d+(?:\.\d+)+)/Petdex[._-]#{arch}\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.filter_map do |asset|
        asset["browser_download_url"]&.[](regex, 1)
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Petdex.app"

  uninstall quit: "run.crafter.petdex-desktop"

  zap trash: [
    "~/.petdex",
    "~/.petdex-desktop",
    "~/Library/Caches/run.crafter.petdex-desktop",
    "~/Library/HTTPStorages/run.crafter.petdex-desktop",
    "~/Library/Preferences/run.crafter.petdex-desktop.plist",
    "~/Library/Saved Application State/run.crafter.petdex-desktop.savedState",
    "~/Library/WebKit/run.crafter.petdex-desktop",
  ]
end
