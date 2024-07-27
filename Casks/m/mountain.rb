cask "mountain" do
  version "1.6.6"
  sha256 :no_check

  url "https://appgineers.de/mountain/files/Mountain.zip"
  name "Mountain"
  desc "Display notifications when mounting/unmounting volumes"
  homepage "https://appgineers.de/mountain/"

  livecheck do
    url "https://appgineers.de/mountain/files/mountaincast.xml"
    strategy :sparkle, &:short_version
  end

  app "Mountain.app"

  zap trash: [
    "/Library/LaunchDaemons/de.appgineers.Mountain.Helper.plist",
    "/Library/PrivilegedHelperTools/de.appgineers.Mountain.Helper",
    "~/Library/Application Support/Mountain",
    "~/Library/Preferences/de.appgineers.Mountain.plist",
  ]

  caveats do
    requires_rosetta
  end
end
