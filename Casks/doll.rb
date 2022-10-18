cask "doll" do
  version "0.0.7"
  sha256 "e9290610c79c96df87317483bec16a5d92b7a0405a6ee680f71d1a1180a6967a"

  url "https://github.com/xiaogdgenuine/Doll/releases/download/v#{version}/Doll.#{version}.dmg"
  name "Doll"
  desc "Utility to show apps badges from the dock in the menu bar"
  homepage "https://github.com/xiaogdgenuine/Doll/"

  depends_on macos: ">= :big_sur"

  app "Doll.app"

  zap trash: "~/Library/Preferences/com.xiaogd.Doll.plist"
end
