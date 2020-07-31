cask "anydo" do
  version "4.2.100"
  sha256 "f1a674b253897dc69253e41d9a19b688859a1b5c6c763c8217e9275db1ed7257"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  homepage "https://www.any.do/"

  depends_on macos: ">= :high_sierra"

  app "Any.do.app"
end
