cask "musictube" do
  version "1.14.2"
  sha256 "90e48a0af7f42f6f6cc125a12c2774b0b4bb49046530c2ce66f768466dfba7d1"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
