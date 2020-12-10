cask "sofa-server" do
  version "1.3.4"
  sha256 :no_check

  url "https://flavio.tordini.org/files/sofa/sofa-server.dmg"
  appcast "https://flavio.tordini.org/sofa-ws/appcast.xml"
  name "Sofa"
  homepage "https://flavio.tordini.org/sofa/"

  app "Sofa Server.app"

  zap trash: [
    "~/Library/Application Scripts/org.tordini.flavio.SofaHelper",
    "~/Library/Caches/Flavio Tordini/sofa-server",
    "~/Library/Caches/org.tordini.flavio.sofa-server",
    "~/Library/Containers/org.tordini.flavio.SofaHelper",
    "~/Library/Preferences/org.tordini.flavio.sofa-server.plist",
  ]
end
