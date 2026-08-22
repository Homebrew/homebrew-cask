cask "appgridmac" do
  version "1.1.25"
  sha256 "526c4ee9bb66ad306b99d3c034b00e3800016b88529d1945db68c7d33fb2143d"

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
