cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.37.0"
  sha256 arm:   "679759762e16e52681c8af8f249d306e3e1e4e935dd07aab9478869e183653ab",
         intel: "32e54df232fe34412b4da1fd4d566941ac690f11e18ba7a9dd8abd6f0d4bed6f"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  livecheck do
    url "https://dl.pstmn.io/api/version/latest?platform=#{arch}&channel=stable"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Postman.app"

  uninstall quit: "com.postmanlabs.mac"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.postmanlabs.mac.sfl*",
        "~/Library/Application Support/com.postmanlabs.mac.ShipIt",
        "~/Library/Application Support/Postman",
        "~/Library/Caches/com.postmanlabs.mac",
        "~/Library/Caches/com.postmanlabs.mac.ShipIt",
        "~/Library/Caches/Postman",
        "~/Library/HTTPStorages/com.postmanlabs.mac",
        "~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist",
        "~/Library/Preferences/com.postmanlabs.mac.plist",
        "~/Library/Saved Application State/com.postmanlabs.mac.savedState",
      ],
      rmdir: "~/.postman"
end
