cask "musictube" do
  version "1.16,2021.1112.104018"
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

  zap trash: [
    "~/Library/Preferences/org.tordini.flavio.musictube.plist",
    "~/Library/Saved Application State/org.tordini.flavio.musictube.savedState",
  ]
end
