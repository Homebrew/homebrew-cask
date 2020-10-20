cask "musictube" do
  version "1.14.1"
  sha256 "7867f11a39aa21a5ebb261ad3b2e2bbec1f9fef412f732c5bf219bfeb96b0cef"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  desc "Streaming music player"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
