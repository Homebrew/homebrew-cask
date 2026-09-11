cask "screen-studio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "3.7.5-4595"
  sha256 arm:   "287530005db8ca3f505101cbc1bb386986b3bfbe351b6cb158222279a48cc6ef",
         intel: "710b84ce8fdb7613f1ba2de06f8934706bc5e76ef601dc70d64b1cbbecfe42c7"

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
