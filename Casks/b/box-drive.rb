cask "box-drive" do
  version "2.54.172"
  sha256 "06d4fd378b5afe3f6184d6e9bfc69cb1f2b6eb9044b0a936377fd64b40dd6d73"

  url "https://e3.boxcdn.net/desktop/releases/mac/BoxDrive-#{version}.pkg"
  name "Box Drive"
  desc "Client for the Box cloud storage service"
  homepage "https://www.box.com/drive"

  livecheck do
    url "https://cdn07.boxcdn.net/Autoupdate6.json"
    strategy :json do |json|
      json.dig("mac", "free", "version")
    end
  end

  auto_updates true
  depends_on macos: :ventura

  pkg "BoxDrive-#{version}.pkg"

  uninstall launchctl: "com.box.desktop.helper",
            quit:      [
              "com.box.Box-Local-Com-Server",
              "com.box.desktop",
              "com.box.desktop.findersyncext",
              "com.box.desktop.helper",
              "com.box.desktop.ui",
            ],
            script:    "/Library/Application Support/Box/uninstall_box_drive",
            pkgutil:   "com.box.desktop.installer.*"

  zap trash: [
    "~/.Box_*",
    "~/Library/Application Support/Box/Box",
    "~/Library/Application Support/FileProvider/com.box.desktop.boxfileprovider",
    "~/Library/Containers/com.box.desktop.findersyncext",
    "~/Library/Logs/Box/Box",
    "~/Library/Preferences/com.box.desktop.plist",
    "~/Library/Preferences/com.box.desktop.ui.plist",
  ]
end
