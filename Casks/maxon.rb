cask "maxon" do
  version "2.1.0,5"
  sha256 "c0d9e9ace0e7d19bb27d9d26d10b5f2688acf16c17c76d30884da1468813bc36"

  url "https://package-cf.redgiant.com/macos/maxon/products/fuse/mxa-combo-installer/#{version.major}/#{version.minor}/#{version.patch}/0/Maxon-#{version.major_minor_patch}-mac-b#{version.csv.second}.zip"
  name "Maxon App"
  desc "Install, use, and try Maxon products"
  homepage "https://www.maxon.net/en/downloads/"

  livecheck do
    url "https://link.redgiant.com/store/api/v2/package/manifests?platform=macos&org=maxon&type=products&family=fuse"
    regex(/"filename".+"Maxon[._-]v?(\d+(?:\.\d+)+)-mac-b(\d+)\.zip"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  installer script: {
    executable: "#{staged_path}/Maxon App Installer.app/Contents/Scripts/install.sh",
    sudo:       true,
  }

  uninstall delete:    [
    "/Applications/Maxon.app",
    "/Library/Application Support/Maxon",
    "/Library/Application Support/Red Giant",
    "/Library/Logs/Maxon",
    "/Library/Logs/Red Giant",
  ],
            launchctl: [
              "com.maxon.mxredirect.agent",
              "com.redgiant.service",
            ]

  zap trash: [
    "~/Library/Application Support/Maxon",
    "~/Library/Application Support/Red Giant",
    "~/Library/Caches/net.maxon.app-manager",
    "~/Library/Preferences/Maxon",
    "~/Library/Preferences/net.maxon.app-manager.plist",
    "~/Library/Saved Application State/net.maxon.app-manager.savedState",
    "/Users/Shared/Maxon",
    "/Users/Shared/Red Giant",
  ]
end
