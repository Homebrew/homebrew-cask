cask "musictube" do
  version "1.14.3,2020.1123.112930"
  sha256 :no_check

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
