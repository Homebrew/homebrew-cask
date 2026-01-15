cask "trae" do
  arch arm: "arm64", intel: "x64"

  version "2.3.3149"
  sha256 arm:   "77b4db5997210f8f5664d44d2f535be683fd7d22642f6d47e504fd66ac3333b1",
         intel: "f762f25cf87ba483136c925258dadf7cef73b5a5fb5431c3b68b732ac0100a62"

  url "https://lf-cdn.trae.ai/obj/trae-ai-us/pkg/app/releases/stable/#{version}/darwin/Trae-darwin-#{arch}.dmg"
  name "Trae"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.ai/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/latest"
    strategy :json do |json|
      json.dig("data", "manifest", "darwin", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Trae.app"

  uninstall launchctl: "com.trae.ShipIt",
            quit:      "com.trae.app"

  zap trash: [
    "~/.trae",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.trae.app.sfl*",
    "~/Library/Application Support/Trae",
    "~/Library/Caches/com.trae.app",
    "~/Library/Caches/com.trae.ShipIt",
    "~/Library/HTTPStorages/com.trae.app",
    "~/Library/Preferences/ByHost/com.trae.ShipIt.*.plist",
    "~/Library/Preferences/com.trae.app.helper.plist",
    "~/Library/Preferences/com.trae.app.plist",
    "~/Library/Saved Application State/com.trae.app.savedState",
  ]
end
