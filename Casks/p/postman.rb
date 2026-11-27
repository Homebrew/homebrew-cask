cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.38.6"
  sha256 arm:   "1cdc02f00668e9d9f15e73a2489a3f665538bdebc01c1db2dbc4e40589dd2aff",
         intel: "5f18fd1e1289769c61722a20b4b3c74920b9232d20f186c80088d811b691fe75"

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
