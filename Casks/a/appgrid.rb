cask "appgrid" do
  version "1.1.8,39"
  sha256 "cde179b6e2416f2fa81da2452ca2e26ad8f8655fe79b1cb8489312069109625f"

  url "https://zekalogic.com/appgrid/app/AppGridMac-#{version.csv.first}.zip",
      verified: "zekalogic.com/appgrid/app/"
  name "AppGridMac"
  desc "AI-assisted Launchpad replacement for macOS"
  homepage "https://appgridmac.com"

  depends_on macos: ">= :sonoma"

  livecheck do
    url "https://zekalogic.com/appgrid/app/appcast.xml"
    strategy :sparkle
  end

  app "AppGridMac.app"

  zap trash: [
    "~/Library/Application Support/com.zekalogic.appgrid.app.direct",
    "~/Library/Preferences/com.zekalogic.appgrid.app.direct.plist",
    "~/Library/Saved Application State/com.zekalogic.appgrid.app.direct.savedState",
  ]
end
