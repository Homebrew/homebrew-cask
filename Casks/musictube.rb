cask "musictube" do
  version "1.13.1"
  sha256 "30eaa0863be443e3f322ee8369aae074fc0195d7f287ce44924ef7ca9d65e841"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
