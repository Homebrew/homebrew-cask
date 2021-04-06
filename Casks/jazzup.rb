cask "jazzup" do
  version "1.0b3"
  sha256 "23139ee856d79b6e78ad3badee82f20b1972f29ffb930a4dd7884d401311a3f8"

  url "https://www.irradiatedsoftware.com/downloads/JazzUp_#{version}.zip"
  appcast "https://www.irradiatedsoftware.com/updates/profiles/jazzup.php"
  name "JazzUp"
  homepage "https://www.irradiatedsoftware.com/labs/"

  app "JazzUp.app"

  zap trash: [
    "~/Library/Preferences/com.irradiatedsoftware.JazzUp.plist",
    "~/Library/Caches/com.irradiatedsoftware.JazzUp",
  ]
end
