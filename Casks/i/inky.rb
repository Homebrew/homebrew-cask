cask "inky" do
  version "0.14.1"
  sha256 "95a99301939ed16ef4602b6eba1cd754df1ecb521750e366871b12988f024115"

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
