cask "appgridmac" do
  version "1.2.6"
  sha256 "68a3d602d9ee47cab61aa2e6a25be8154154a04a2b22b90ceb90b43a1be95238"

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
