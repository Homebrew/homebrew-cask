cask "guilded" do
  version "1.0.9104602-release"
  sha256 :no_check

  url "https://www.guilded.gg/downloads/Guilded-Mac.dmg"
  name "Guilded"
  desc "Chat platform alternative to Discord"
  homepage "https://www.guilded.gg/"

  app "Guilded.app"

  zap trash: [
    "~/Library/Application Support/Guilded",
    "~/Library/Logs/Guilded",
    "~/Library/Preferences/com.electron.guilded.plist",
    "~/Library/Saved Application State/com.electron.guilded.savedState",
  ]
end
