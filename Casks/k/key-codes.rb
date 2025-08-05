cask "key-codes" do
  version "2.2.2"
  sha256 "f8008cae815b8825563e05eddd513dc647c8fd1abebde81e298fde2c14db1911"

  url "https://manytricks.com/download/_do_not_hotlink_/keycodes#{version.no_dots}.dmg"
  name "Key Codes"
  desc "Display key code, unicode value and modifier keys state for any key combination"
  homepage "https://manytricks.com/keycodes/"

  livecheck do
    url "https://manytricks.com/keycodes/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Key Codes.app"

  zap trash: [
    "~/Library/Caches/com.manytricks.KeyCodes",
    "~/Library/Preferences/com.manytricks.KeyCodes.plist",
  ]
end
