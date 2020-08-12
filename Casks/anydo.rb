cask "anydo" do
  version "4.2.102"
  sha256 "5109ff9fd1ca75366d001ede369bde163ca10247d9ed166300ef17cf520839ff"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
