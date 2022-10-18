cask "inky" do
  version "0.14.0"
  sha256 "a73e3f4aaf3d114522a8410338922a2cc6a90acd2511066f33b89d4e039dc375"

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
