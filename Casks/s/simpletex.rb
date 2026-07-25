cask "simpletex" do
  arch arm: "-arm64"

  version "0.2.12"
  sha256 arm:   "ce69d50773583fc2026922fe3d2367c46971e95123198c734fb49d8978b5be7a",
         intel: "b2b434a5d7a52da837d348f1a7f1b2802d04d6ba5df9c2a3a2314bc40bed3b98"

  url "https://update.simpletex.net/publish/electron/darwin/SimpleTex-#{version}#{arch}.dmg"
  name "SimpleTex"
  desc "Formula snipping and recognition app"
  homepage "https://simpletex.net/"

  livecheck do
    url "https://server.simpletex.cn/misc/check/force_update_version/"
    strategy :json do |json|
      json.dig("res", "macos_latest_version")
    end
  end

  auto_updates true
  depends_on :macos

  app "SimpleTex.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.spt.simpletex.sfl*",
    "~/Library/Application Support/SimpleTex",
    "~/Library/Preferences/com.spt.SimpleTex.plist",
    "~/Library/Saved Application State/com.spt.SimpleTex.savedState",
  ]
end
