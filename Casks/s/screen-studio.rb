cask "screen-studio" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x64"

  version "4.0.1-4897"
  sha256 arm:   "67a659e347b7e1796314282d1fc8a961d0afcb5347ee36c44aab8c0a18669e64",
         intel: "35c0fce6021afa067e32cb58d71433370c85eca7b1063c24c4f56691973c2b24"

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
