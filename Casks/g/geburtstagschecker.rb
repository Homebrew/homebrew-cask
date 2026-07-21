cask "geburtstagschecker" do
  version "1.9,240"
  sha256 "aadc2005c7a535107383ff6b517d09cd7859fcbb1dd4178420e895aff2643513"

  url "https://earthlingsoft.net/GeburtstagsChecker/GeburtstagsChecker%20#{version.csv.first}%20(#{version.csv.second}).zip"
  name "GeburtstagsChecker"
  homepage "https://earthlingsoft.net/GeburtstagsChecker/"

  livecheck do
    url "https://earthlingsoft.net/GeburtstagsChecker/appcast.xml"
    strategy :sparkle
  end

  depends_on :macos

  app "GeburtstagsChecker #{version.csv.first} (#{version.csv.second})/GeburtstagsChecker.app"

  zap trash: [
    "~/Library/Caches/earthlingsoft.GeburtstagsChecker",
    "~/Library/Preferences/earthlingsoft.GeburtstagsChecker.plist",
  ]

  caveats do
    requires_rosetta
  end
end
