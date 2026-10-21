cask "screen-studio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.1.0-5005"
  sha256 arm:   "4b02096950ccbf483ecb5b6e94450bd6d68bd76879b1c7944cc7b3ef8e04da62",
         intel: "df6263fb11fc4a672621163bb2b23a50d5f0c37ca78e68d16903c4efedeb7465"

  url "https://screenstudioassets.com/releases/#{version}/Screen%20Studio-#{version}#{arch}-mac.zip"
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
  depends_on macos: :monterey

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
