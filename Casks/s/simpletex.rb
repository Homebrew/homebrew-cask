cask "simpletex" do
  arch arm: "-arm64"

  version "0.2.11"
  sha256 arm:   "e18dad77f1f7aff9a6d79832e1503468f0ff8948e22da91f8c41e17faa7163f7",
         intel: "d6c3c579d5ed0d1b7b4660d3b0486313adca4e998c6931217dff06bc359adf69"

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
  depends_on macos: ">= :catalina"

  app "SimpleTex.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.spt.simpletex.sfl*",
    "~/Library/Application Support/SimpleTex",
    "~/Library/Preferences/com.spt.SimpleTex.plist",
    "~/Library/Saved Application State/com.spt.SimpleTex.savedState",
  ]
end
