cask "key-codes" do
  version "2.2.1"
  sha256 :no_check

  url "https://manytricks.com/download/keycodes"
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
