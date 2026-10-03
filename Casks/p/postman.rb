cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.30.6"
  sha256 arm:   "c7bb6313569bfb84ae1d18145d00c57b56ce751fe0d41c6e8b2c8b6e719a8d36",
         intel: "061f36789d4bd5cbd0d554a67da6a956eee74c9848a7f1d454a4141ef6267540"

  url "https://dl.pstmn.io/download/version/#{version}/#{arch}"
  name "Postman"
  desc "Collaboration platform for API development"
  homepage "https://www.postman.com/"

  # This is a workaround to a slow-to-update livecheck. It uses the in-app
  # update check link and queries the available versions for a generic major
  # version. We cannot use #{version} as the URL does not exist if #{version}
  # is the latest version available.
  livecheck do
    url "https://dl.pstmn.io/update/status?currentVersion=#{version.major}.0.0&platform=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

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
  ]
end
