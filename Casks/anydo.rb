cask "anydo" do
  version "4.2.101"
  sha256 "5c50190057446e36daa078189cd3450d8c75d898259e37a71b48b3ad02107e44"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  homepage "https://www.any.do/"

  depends_on macos: ">= :high_sierra"

  app "Any.do.app"
end
