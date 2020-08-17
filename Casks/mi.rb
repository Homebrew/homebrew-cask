cask "mi" do
  version "3.0.4"
  sha256 "f6e5d1a6845277a9bb5b994df713f9523a0ce7e9071ed85a3a88917adee281e7"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  appcast "https://www.mimikaki.net/download/appcast.xml"
  name "mi"
  homepage "https://www.mimikaki.net/"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
