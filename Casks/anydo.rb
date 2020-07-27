cask "anydo" do
  version "4.2.97"
  sha256 "81e8b3baf2eb52625b26727fb1381811e64ac7d740b47bebe057907948f15f0c"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  homepage "https://www.any.do/"

  depends_on macos: ">= :high_sierra"

  app "Any.do.app"
end
