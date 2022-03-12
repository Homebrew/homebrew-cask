cask "sizeup" do
  version "1.7.4,1360"
  sha256 "5f2e9514627c0dc867ece0665fef790f01f3874d7765cc459e3a7676b78a02cf"

  url "https://www.irradiatedsoftware.com/downloads/SizeUp_#{version.csv.first}.zip"
  name "SizeUp"
  desc "Utility to resize and position application windows"
  homepage "https://www.irradiatedsoftware.com/sizeup/"

  livecheck do
    url "https://www.irradiatedsoftware.com/updates/profiles/sizeup.php"
    strategy :sparkle
  end

  auto_updates true

  app "SizeUp.app"

  zap trash: [
    "~/Library/Preferences/com.irradiatedsoftware.SizeUp.plist",
    "~/Library/Application Support/SizeUp",
  ]
end
