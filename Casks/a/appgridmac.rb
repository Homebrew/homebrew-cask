cask "appgridmac" do
  version "1.2.14"
  sha256 "3a40731175589979da09e641e544c2a0de85bfd625feb02e66dc4d2e5acfea20"

  url "https://zekalogic.com/appgrid/app/AppGridMac-#{version}.zip"
  name "AppGridMac"
  desc "AI-assisted Launchpad replacement"
  homepage "https://appgridmac.com/"

  livecheck do
    url "https://zekalogic.com/appgrid/app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma

  app "AppGridMac.app"

  zap trash: [
    "~/Library/Application Support/com.zekalogic.appgrid.app.direct",
    "~/Library/Caches/com.zekalogic.appgrid.app.direct",
    "~/Library/HTTPStorages/com.zekalogic.appgrid.app.direct",
    "~/Library/Preferences/com.zekalogic.appgrid.app.direct.plist",
    "~/Library/Saved Application State/com.zekalogic.appgrid.app.direct.savedState",
  ]
end
