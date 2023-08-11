cask "screen-studio" do
  arch arm: "-arm64"

  version "2.17.1"
  sha256 arm:   "b5f9b6d5ea536c7b073ce1f039eb09a1b73bcc22c0c36a83b9cf9cacb264006f",
         intel: "e3670486a4bddc0445ef46e9fefb46502fc5bd4205601db49f777e6fc5327729"

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
  depends_on macos: ">= :monterey"

  app "Screen Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.timpler.screenstudio.sfl2",
    "~/Library/Application Support/Screen Studio",
    "~/Library/Caches/com.timpler.screenstudio",
    "~/Library/Caches/com.timpler.screenstudio.ShipIt",
    "~/Library/HTTPStorages/com.timpler.screenstudio",
    "~/Library/Preferences/com.timpler.screenstudio.plist",
    "~/Library/Saved Application State/com.timpler.screenstudio.savedState",
    "~/Screen Studio Projects",
  ]
end
