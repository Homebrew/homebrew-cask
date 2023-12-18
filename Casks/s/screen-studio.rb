cask "screen-studio" do
  arch arm: "-arm64"

  version "2.19.2"
  sha256 arm:   "19929c50b33aeba8c089712186a74204629b02e634acfacc05d380f636afb5ea",
         intel: "ef7c50ada4c4de52cd2d35294e24a05406f96a08669818fdb7c292e616b78844"

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
  depends_on macos: ">= :high_sierra"

  app "Screen Studio.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.timpler.screenstudio.sfl*",
    "~/Library/Application Support/Screen Studio",
    "~/Library/Caches/com.timpler.screenstudio",
    "~/Library/Caches/com.timpler.screenstudio.ShipIt",
    "~/Library/HTTPStorages/com.timpler.screenstudio",
    "~/Library/Preferences/com.timpler.screenstudio.plist",
    "~/Library/Saved Application State/com.timpler.screenstudio.savedState",
    "~/Screen Studio Projects",
  ]
end
