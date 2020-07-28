cask "anydo" do
  version "4.2.98"
  sha256 "473368776694bac766d71f7e087e74a76ce3844e2bc186cb401fd2a2ccf139d8"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  homepage "https://www.any.do/"

  depends_on macos: ">= :high_sierra"

  app "Any.do.app"
end
