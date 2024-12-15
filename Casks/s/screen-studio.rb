cask "screen-studio" do
  arch arm: "-arm64"

  version "2.26.0-3094"
  sha256 arm:   "720ca6435453b1bd7de56ca2033b1184b26bab79bbf2fd2dac021b4823840ee6",
         intel: "b103d24f2c85ddca1e253978eb3c91dbaa567030a48efd246999416548b29249"

  url "https://screenstudioassets.com/releases/#{version}/Screen%20Studio-#{version}#{arch}-mac.zip",
      verified: "screenstudioassets.com/"
  name "Screen Studio"
  desc "Screen recorder and editor"
  homepage "https://screen.studio/"

  livecheck do
    url "https://screen.studio/api/trpc/appInfo.latestVersionInfo?input=%7B%22isBeta%22%3Afalse%7D"
    strategy :json do |json|
      json.dig("result", "data", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Screen Studio.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.timpler.screenstudio.sfl*",
        "~/Library/Application Support/Screen Studio",
        "~/Library/Caches/com.timpler.screenstudio",
        "~/Library/Caches/com.timpler.screenstudio.ShipIt",
        "~/Library/HTTPStorages/com.timpler.screenstudio",
        "~/Library/Preferences/com.timpler.screenstudio.plist",
        "~/Library/Saved Application State/com.timpler.screenstudio.savedState",
      ],
      rmdir: "~/Screen Studio Projects"
end
