cask "jazzup" do
  version "1.0b3,3"
  sha256 "23139ee856d79b6e78ad3badee82f20b1972f29ffb930a4dd7884d401311a3f8"

  url "https://www.irradiatedsoftware.com/downloads/JazzUp_#{version.csv.first}.zip"
  name "JazzUp"
  desc "Plays sound effects as you type"
  homepage "https://www.irradiatedsoftware.com/labs/"

  livecheck do
    url "https://www.irradiatedsoftware.com/updates/profiles/jazzup.php"
    strategy :sparkle
  end

  app "JazzUp.app"

  zap trash: [
    "~/Library/Preferences/com.irradiatedsoftware.JazzUp.plist",
    "~/Library/Caches/com.irradiatedsoftware.JazzUp",
  ]
end
