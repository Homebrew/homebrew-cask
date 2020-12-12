cask "key-codes" do
  version "2.2,2026"
  sha256 :no_check

  url "https://manytricks.com/download/keycodes"
  appcast "https://manytricks.com/keycodes/appcast"
  name "Key Codes"
  homepage "https://manytricks.com/keycodes/"

  auto_updates true

  app "Key Codes.app"

  zap trash: [
    "~/Library/Caches/com.manytricks.KeyCodes",
    "~/Library/Preferences/com.manytricks.KeyCodes.plist",
  ]
end
