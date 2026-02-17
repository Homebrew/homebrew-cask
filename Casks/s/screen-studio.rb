cask "screen-studio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "3.6.0-4214"
  sha256 arm:   "8852d7386bc7a26a8dab1ef4a712543f96136b79de9195f141463e8073ff5f6c",
         intel: "f361fbf4ad8014cc7ec3b3ea5dc317e13e1a09c887737e6c2a179e029dd1c57e"

  url "https://screenstudioassets.com/releases/#{version}/Screen%20Studio-#{version}#{arch}-mac.zip",
      verified: "screenstudioassets.com/"
  name "Screen Studio"
  desc "Screen recorder and editor"
  homepage "https://screen.studio/"

  livecheck do
    url "https://screen.studio/api/trpc/updates.checkForUpdates?input={\"architecture\":\"#{livecheck_arch}\",\"currentVersion\":\"0.0.0\",\"channel\":\"stable\"}"
    strategy :json do |json|
      json.dig("result", "data", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

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
