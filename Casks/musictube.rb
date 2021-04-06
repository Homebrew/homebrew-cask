cask "musictube" do
  version "1.14.4,2021.0402.104949"
  sha256 :no_check

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  livecheck do
    url "https://flavio.tordini.org/musictube-ws/appcast.xml"
    strategy :sparkle
  end

  app "Musictube.app"
end
