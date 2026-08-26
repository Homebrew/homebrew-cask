cask "appgridmac" do
  version "1.2.3"
  sha256 "97dfae3f7f9a8f9465c92160dc0968b810f0ccc00d1c19d8cd73e9e278df0d40"

  url "https://zekalogic.com/appgrid/app/AppGridMac-#{version}.zip",
      verified: "zekalogic.com/appgrid/app/"
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
