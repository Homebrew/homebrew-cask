cask "maxon" do
  version "2026.5.0"
  sha256 "1afa70c7f3362b56fa9c1df0cd1289a6e652ed05b1d89a25c5dcf4dd592c06ba"

  url "https://mx-app-blob-prod.maxon.net/mx-package-production/installer/macos/maxon/maxonapp/releases/#{version}/Maxon_App_#{version}_Mac.zip"
  name "Maxon App"
  desc "Install, use, and try Maxon products"
  homepage "https://www.maxon.net/en/downloads/"

  livecheck do
    url "https://packages.maxon.net/manifests?platform=macos&org=maxon&type=products&family=fuse"
    strategy :json do |json|
      json.map do |item|
        item["version"]
      end
    end
  end

  depends_on :macos

  installer script: {
    executable: "#{staged_path}/Maxon_App_#{version}_Mac.app/Contents/MacOS/installbuilder.sh",
    sudo:       true,
  }

  uninstall launchctl: [
              "com.maxon.mxnotify.agent",
              "com.maxon.mxredirect.agent",
              "com.redgiant.service",
            ],
            quit:      "net.maxon.app-manager",
            delete:    [
              "/Applications/Maxon.app",
              "/Library/Application Support/Maxon",
              "/Library/Application Support/Red Giant",
              "/Library/Logs/Maxon",
              "/Library/Logs/Red Giant",
            ]

  zap trash: [
    "/Users/Shared/Maxon",
    "/Users/Shared/Red Giant",
    "~/Library/Application Support/Maxon",
    "~/Library/Application Support/Red Giant",
    "~/Library/Caches/net.maxon.app-manager",
    "~/Library/Preferences/Maxon",
    "~/Library/Preferences/net.maxon.app-manager.plist",
    "~/Library/Saved Application State/net.maxon.app-manager.savedState",
  ]
end
