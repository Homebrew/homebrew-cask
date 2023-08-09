cask "doll" do
  version "0.0.8"
  sha256 "509f557d5d8985adab3ecf24d4280e38a23a55e5355b62283ca58d0d7a2fcb27"

  url "https://github.com/xiaogdgenuine/Doll/releases/download/v#{version}/Doll.#{version}.dmg"
  name "Doll"
  desc "Utility to show apps badges from the dock in the menu bar"
  homepage "https://github.com/xiaogdgenuine/Doll/"

  depends_on macos: ">= :big_sur"

  app "Doll.app"

  zap trash: "~/Library/Preferences/com.xiaogd.Doll.plist"
end
