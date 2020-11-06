cask "key-codes" do
  version "2.1"
  sha256 "60ec4c0cef5e97943c91e4ed317434bcaddd4cdbce93368d8bca9db9d45c60e2"

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
