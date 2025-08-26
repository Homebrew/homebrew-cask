cask "geburtstagschecker" do
  version "1.8.2,195"
  sha256 :no_check

  url "https://earthlingsoft.net/GeburtstagsChecker/GeburtstagsChecker.zip"
  name "GeburtstagsChecker"
  homepage "https://earthlingsoft.net/GeburtstagsChecker/"

  livecheck do
    url "https://earthlingsoft.net/GeburtstagsChecker/appcast.xml"
    strategy :sparkle
  end

  # The url is unversioned, but the download returns an app directory with a version number
  rename "GeburtstagsChecker #{version.csv.first} (#{version.csv.second})", "GeburtstagsChecker"

  app "GeburtstagsChecker/GeburtstagsChecker.app"

  zap trash: [
    "~/Library/Caches/earthlingsoft.GeburtstagsChecker",
    "~/Library/Preferences/earthlingsoft.GeburtstagsChecker.plist",
  ]

  caveats do
    requires_rosetta
  end
end
