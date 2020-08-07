cask "musictube" do
  version "1.13"
  sha256 "5f6c9a91d90931f47c5002cca11574339b6cfd6f586adb85c045bb2494d47e54"

  url "https://flavio.tordini.org/files/musictube/musictube.dmg"
  appcast "https://flavio.tordini.org/musictube-ws/appcast.xml"
  name "Musictube"
  homepage "https://flavio.tordini.org/musictube"

  app "Musictube.app"
end
