cask "inky" do
  version "0.13.0"
  sha256 "4f7045589de7163f384b1d79dafd18f2567d74390d7c28e0242076fba2f45438"

  url "https://github.com/inkle/inky/releases/download/#{version}/Inky_mac.dmg",
      verified: "github.com/inkle/inky/"
  name "Inky"
  desc "Editor for ink: inkle's narrative scripting language"
  homepage "https://www.inklestudios.com/ink/"

  app "Inky.app"

  zap trash: [
    "~/Library/Application Support/Inky",
    "~/Library/Preferences/com.inkle.inky.helper.plist",
    "~/Library/Preferences/com.inkle.inky.plist",
    "~/Library/Saved Application State/com.inkle.inky.savedState",
    "~/Library/Logs/Inky",
  ]
end
