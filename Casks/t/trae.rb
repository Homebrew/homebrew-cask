cask "trae" do
  arch arm: "arm64", intel: "x64"

  version "1.0.26261"
  sha256 arm:   "02b6737da9a291bcf4d6a4c200c865516a81b50edfe939a4f7a8bcba4a0e2cbc",
         intel: "9c229de6af24a372851c36c20cbdf68a10ac9780d71ae8e4adb2d93aa8c96d99"

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
