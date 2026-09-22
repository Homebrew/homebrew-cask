cask "appgridmac" do
  version "1.2.11"
  sha256 "52536bc4bfa30b5833ade5b9a073c62bae4b387e9bd20c997b43826af056e439"

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
