cask "musictube" do
  version "1.14.3,2020.1123.112930"
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
