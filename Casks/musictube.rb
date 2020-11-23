cask "musictube" do
  version "1.14.3"
  sha256 "bb274d6b6de5cd0420cf37ae413118b1c7e488a331f23819e3ad4316f61a4c54"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
