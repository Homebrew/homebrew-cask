cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.37.3"
  sha256 arm:   "773dab22af4de9760f9d7039cdfcf6a364c10d0544581f9b030bc1288f36579a",
         intel: "0d7e8c25ca9a81a785b7cc7112ebb2b90dfef434171ae978363b39160e257acd"

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
