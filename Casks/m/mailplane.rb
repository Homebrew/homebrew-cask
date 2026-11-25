cask "mailplane" do
  version "4.3.16,4967"
  sha256 "093d9b8696e53655bc5f9bf3b3a5e439a630be72533dc73044586113977f16fc"

  url "https://builds.mailplaneapp.com/Mailplane_#{version.major}_#{version.csv.second}.tbz"
  name "Mailplane"
  desc "Gmail client"
  homepage "https://mailplaneapp.com/"

  livecheck do
    url "https://update.mailplaneapp.com/appcast.php?rqsr=1&osVersion=10.14.1&appVersion=#{version.csv.second}&shortVersionString=#{version.csv.first}"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Mailplane.app"

  zap trash: [
    "~/Library/Application Scripts/com.mailplaneapp.Mailplane*.Send",
    "~/Library/Application Support/com.mailplaneapp.Mailplane*",
    "~/Library/Containers/com.mailplaneapp.Mailplane*.Send",
    "~/Library/Logs/Mailplane",
    "~/Library/Preferences/com.mailplaneapp.Mailplane*.plist",
  ]

  caveats do
    requires_rosetta
  end
end
