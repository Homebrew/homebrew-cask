cask "cinch" do
  version "1.2.4,146"
  sha256 "68afff19aaff4885e803733df74cfc87fe6529ec57107d21bddcb00d61dd14a0"

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version.csv.first}.zip"
  name "Cinch"
  desc "Window management tool"
  homepage "https://www.irradiatedsoftware.com/cinch/"

  livecheck do
    url "https://www.irradiatedsoftware.com/updates/profiles/cinch.php"
    strategy :sparkle
  end

  app "Cinch.app"
end
