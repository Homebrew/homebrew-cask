cask "key-codes" do
  version "2.2.3"
  sha256 "1228476da2fe3ad32fed885405c6b96dcdcdc3eea5dd77caf2337149b4895b87"

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
