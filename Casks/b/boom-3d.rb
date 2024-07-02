cask "boom-3d" do
  version "2.2.0,102.2.0052"
  sha256 :no_check

  url "https://dfvk972795zr9.cloudfront.net/Boom3Dmac/webstore/Boom3D.dmg",
      verified: "dfvk972795zr9.cloudfront.net/"
  name "Boom 3D"
  desc "Volume booster and equaliser software"
  homepage "https://www.globaldelight.com/boom/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :mojave"

  app "Boom 3D.app"

  uninstall launchctl: [
              "com.globaldelight.Boom3D",
              "com.globaldelight.Boom3DHelper",
            ],
            quit:      "com.globaldelight.Boom3D"

  zap trash: [
    "~/Library/Application Support/Boom3D",
    "~/Library/Application Support/com.globaldelight.Boom3D",
    "~/Library/Preferences/com.globaldelight.Boom3D.plist",
    "~/Library/Preferences/com.globaldelight.Boom3DHelper.plist",
  ]
end
