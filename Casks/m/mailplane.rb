cask "mailplane" do
  version "4.3.13,4957"
  sha256 "c328f1560e9b10be38f0077d4da75dd0a23f450a97bf3dd5f72473994a8fa2d0"

  url "https://builds.mailplaneapp.com/Mailplane_#{version.major}_#{version.csv.second}.tbz"
  name "Mailplane"
  desc "Gmail client"
  homepage "https://mailplaneapp.com/"

  livecheck do
    url "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.csv.second}&shortVersionString=#{version.csv.first}"
    strategy :sparkle
  end

  auto_updates true

  app "Mailplane.app"

  zap trash: "~/Library/Preferences/com.mailplaneapp.Mailplane.plist"

  caveats do
    requires_rosetta
  end
end
