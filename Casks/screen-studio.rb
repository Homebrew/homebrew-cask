cask "screen-studio" do
  arch arm: "-arm64"

  version "2.14.6"
  sha256 arm:   "b4f67659dd92523001971e15f243d4b15971ac08216ccb399d52f6d14fd44f59",
         intel: "6f9ab9d55738efb2d0d3b54dc27ef5424bb1ad9e01e142ff820d6078c9d1571a"

  url "https://screenstudioassets.com/Screen%20Studio-#{version}#{arch}-mac.zip",
      verified: "screenstudioassets.com/"
  name "Screen Studio"
  desc "Screen recorder and editor"
  homepage "https://www.screen.studio/"

  livecheck do
    url "https://www.screen.studio/api/app-version"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  app "Screen Studio.app"

  zap trash: [
    "~/Screen Studio Projects",
    "~/Library/Application Support/Screen Studio",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.timpler.screenstudio.sfl2",
    "~/Library/Caches/com.timpler.screenstudio",
    "~/Library/Caches/com.timpler.screenstudio.ShipIt",
    "~/Library/HTTPStorages/com.timpler.screenstudio",
    "~/Library/Preferences/com.timpler.screenstudio.plist",
    "~/Library/Saved Application State/com.timpler.screenstudio.savedState",
  ]
end
