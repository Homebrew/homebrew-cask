cask "maxon" do
  version "2025.2.0"
  sha256 "5da104b0b8134ca34574b7da5885d3444ccd420e3cb52935951637dd2c534c5a"

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
