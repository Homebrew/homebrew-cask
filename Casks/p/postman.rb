cask "postman" do
  arch arm: "osx_arm64", intel: "osx64"

  version "12.28.6"
  sha256 arm:   "fc481abce04f7da6b2fc0af6d888cd865304e494a769cf2a5780f07616c51cd3",
         intel: "485fc2ac5cb9a5b99e96970237775212c5c32b641207c4df9f2a80b5193555b6"

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
