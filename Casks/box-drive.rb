cask "box-drive" do
  version "2.30.88"
  sha256 :no_check

  url "https://e3.boxcdn.net/box-installers/desktop/releases/mac/Box.pkg",
      verified: "e3.boxcdn.net/"
  name "Box Drive"
  desc "Client for the Box cloud storage service"
  homepage "https://www.box.com/drive"

  livecheck do
    url :url
    strategy :extract_plist do |item|
      item["com.box.desktop"].version
    end
  end

  auto_updates true
  conflicts_with cask: "box-sync"

  pkg "Box.pkg"

  uninstall pkgutil:   "com.box.desktop.installer.*",
            launchctl: "com.box.desktop.helper",
            script:    "/Library/Application Support/Box/uninstall_box_drive",
            quit:      [
              "com.box.Box-Local-Com-Server",
              "com.box.desktop",
              "com.box.desktop.findersyncext",
              "com.box.desktop.helper",
              "com.box.desktop.ui",
            ]

  zap trash: [
    "~/Library/Application Support/Box/Box",
    "~/Library/Logs/Box/Box",
    "~/Library/Containers/com.box.desktop.findersyncext",
  ]
end
