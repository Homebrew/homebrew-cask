cask "sofa-server" do
  version "1.5,2022.0518.153152"
  sha256 :no_check

  url "https://flavio.tordini.org/files/sofa/sofa-server.dmg"
  name "Sofa"
  homepage "https://flavio.tordini.org/sofa/"

  livecheck do
    url "https://flavio.tordini.org/sofa-ws/appcast.xml"
    strategy :sparkle
  end

  app "Sofa Server.app"

  zap trash: [
    "~/Library/Application Scripts/org.tordini.flavio.SofaHelper",
    "~/Library/Caches/Flavio Tordini/sofa-server",
    "~/Library/Caches/org.tordini.flavio.sofa-server",
    "~/Library/Containers/org.tordini.flavio.SofaHelper",
    "~/Library/Preferences/org.tordini.flavio.sofa-server.plist",
  ]
end
