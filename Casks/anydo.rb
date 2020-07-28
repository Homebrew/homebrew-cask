cask "anydo" do
  version "4.2.99"
  sha256 "23bd1f325729e9f82f7b21c7d73cecb418f66b6d38b4d1ec1f70a58e35298f2a"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  homepage "https://www.any.do/"

  depends_on macos: ">= :high_sierra"

  app "Any.do.app"
end
