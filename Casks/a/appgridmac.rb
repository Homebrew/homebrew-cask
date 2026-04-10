cask "appgridmac" do
  version "1.1.9"
  sha256 "b742dbd91a844cf55312d400324f55cadb46658d7cf0c4360f5ecf224399725c"

  url "https://zekalogic.com/appgrid/app/AppGridMac-#{version}.zip",
      verified: "zekalogic.com/appgrid/app/"
  name "AppGridMac"
  desc "AI-assisted Launchpad replacement"
  homepage "https://appgridmac.com/"

  livecheck do
    url "https://zekalogic.com/appgrid/app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"

  app "AppGridMac.app"

  zap trash: [
    "~/Library/Application Support/com.zekalogic.appgrid.app.direct",
    "~/Library/Preferences/com.zekalogic.appgrid.app.direct.plist",
    "~/Library/Saved Application State/com.zekalogic.appgrid.app.direct.savedState",
  ]
end
