cask "doll" do
  version "0.0.9.2"
  sha256 "f9cb50b91fc123d03d64cc9ebdaf9407fe976796cdb9a5ffcd89a4f9d49c4dc5"

  url "https://github.com/xiaogdgenuine/Doll/releases/download/v#{version}/Doll.#{version}.dmg"
  name "Doll"
  desc "Utility to show apps badges from the dock in the menu bar"
  homepage "https://github.com/xiaogdgenuine/Doll/"

  depends_on macos: ">= :big_sur"

  app "Doll.app"

  zap trash: "~/Library/Preferences/com.xiaogd.Doll.plist"
end
