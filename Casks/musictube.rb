cask "musictube" do
  version "1.14"
  sha256 "572cb5e30475f16ada886cc7fe21a409c5775c9c788e1469c1a7d337f8218446"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
