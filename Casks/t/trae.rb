cask "trae" do
  arch arm: "arm64", intel: "x64"

  version "2.3.103560"
  sha256 arm:   "99f40750eaf9674088cdb25757dab8ca64101c2a7dbff526786830cfbb745ef9",
         intel: "adf3ee88065e26514198b2205e8814983c1b6df33d63bb8d5eadc8046b690a76"

  url "https://lf-cdn.trae.ai/obj/trae-ai-us/pkg/app/releases/stable/#{version}/darwin/TRAE-darwin-#{arch}.dmg"
  name "Trae"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.ai/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/latest"
    regex(%r{/stable/v?(\d+(?:\.\d+)+)/darwin/}i)
    strategy :json do |json, regex|
      json.dig("data", "manifest", "darwin", "versions")&.map do |item|
        item["url"]&.[](regex, 1)
      end
    end
  end

  auto_updates true
  depends_on macos: :monterey

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
