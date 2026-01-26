cask "trae" do
  arch arm: "arm64", intel: "x64"

  version "2.3.4284"
  sha256 arm:   "b6a01ba1604cfa03dc59c1bc72135b4f7a8f0b6e7358f801646ba6d848420606",
         intel: "3a4eb9618fba180edec40fb35e1b8f3c0148875e8b764570db76a27b3b14b524"

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
