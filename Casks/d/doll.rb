cask "doll" do
  version "0.0.9"
  sha256 "297d65ad6f33445b56afc50d963fe734bc854b7d1a8f0edef1a2e7866026b686"

  url "https://github.com/xiaogdgenuine/Doll/releases/download/v#{version}/Doll.#{version}.dmg"
  name "Doll"
  desc "Utility to show apps badges from the dock in the menu bar"
  homepage "https://github.com/xiaogdgenuine/Doll/"

  depends_on macos: ">= :big_sur"

  app "Doll.app"

  zap trash: "~/Library/Preferences/com.xiaogd.Doll.plist"
end
