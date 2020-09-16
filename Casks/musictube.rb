cask "musictube" do
  version "1.13.2"
  sha256 "ed93e0a63871bf224a661f7dade67340f40dfdacc2067913ccdfc1fe5e99357e"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
