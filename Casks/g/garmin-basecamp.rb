cask "garmin-basecamp" do
  version "4.8.13"
  sha256 "e4cdb4f6ef89a709d197e0273a06f995bb4b3542538f0f3e4743bfc85ce74e0b"

  url "https://download.garmin.com/software/BaseCampforMac_#{version.no_dots}.dmg"
  name "Garmin BaseCamp"
  desc "3D mapping application"
  homepage "https://www.garmin.com/en-US/software/basecamp/"

  livecheck do
    url "https://www8.garmin.com/support/download_details.jsp?id=4449"
    regex(/name=["']?software_version["']?\s*content=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "Install BaseCamp.pkg"

  uninstall quit:    [
              "com.garmin.BaseCamp",
              "com.garmin.MapInstall",
              "com.garmin.MapManager",
            ],
            pkgutil: [
              "com.Garmin.pkg.BaseCamp",
              "com.Garmin.pkg.BasecampPostflight",
              "com.Garmin.pkg.MapInstall",
              "com.Garmin.pkg.MapManager",
            ]

  zap trash: [
    "~/Library/Application Support/Garmin",
    "~/Library/Caches/com.garmin.BaseCamp",
    "~/Library/Caches/com.garmin.MapInstall",
    "~/Library/Caches/Garmin",
    "~/Library/Cookies/com.garmin.BaseCamp.binarycookies",
    "~/Library/Cookies/com.garmin.MapInstall.binarycookies",
    "~/Library/Logs/Garmin",
    "~/Library/Preferences/com.garmin.BaseCamp.plist",
    "~/Library/Preferences/com.garmin.MapInstall.plist",
    "~/Library/Preferences/com.garmin.MapManager.plist",
  ]

  caveats do
    requires_rosetta
  end
end
