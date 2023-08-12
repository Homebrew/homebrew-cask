cask "screen-studio" do
  arch arm: "-arm64"

  version "2.17.7"
  sha256 arm:   "8fc53d4681dcb2a20e6ad3f4a84305d6b150a991898a133126196ebde9fbbb92",
         intel: "99d55d5060e220df232eb26fb75a04ceb635fe7521b09582ddb955b6e499c072"

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
