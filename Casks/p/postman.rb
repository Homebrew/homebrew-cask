cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.37.1"
  sha256 arm:   "08ed652c09eaf79842a5419c1d94e73360839e1dbde5169744ea167e22f8c25b",
         intel: "9d913ec4d95e9679b063fbe1221944285f7f8ace6b77a45405a29888613295e8"

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
