cask "key-codes" do
  version "2.2"
  sha256 "3ebedb96f14da9a9d9691711c32cb1bb275bf8a3bd51fcbd59f4e0a0b12daf06"

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
