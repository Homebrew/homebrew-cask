cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.37.2"
  sha256 arm:   "f399d5a48c7d2e5ee4522d845b28775d219c969a978b57af4debae4b58ff8865",
         intel: "87a3fcc8ec016cb2c5d9918bba73dc0d9d7dbd3f41f588feae2d19bbefc95600"

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
