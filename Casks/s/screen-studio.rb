cask "screen-studio" do
  arch arm: "-arm64"

  version "2.17.10"
  sha256 arm:   "48296bcc22ec744d9af3b43396cae77448c8452c8b35357aafa6d4e80c6e2622",
         intel: "b84546475dd5e9aaaafc80e6c5f4417c9357da6200e8ccb2ca48b34bf2b7a629"

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
