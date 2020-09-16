cask "sofa-server" do
  version "1.3.4"
  sha256 "14860aa797c3ef39c9c81d829e77b63f36a7dc4c1190b90542a7e614a37e7ed5"

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
