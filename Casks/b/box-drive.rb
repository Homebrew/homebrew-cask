cask "box-drive" do
  version "2.38.173"
  sha256 "4a1e0810aeeb4e160152ec8f0cc04c70c758a5515241cbbfdf98b68b2ec25ba0"

  url "https://e3.boxcdn.net/desktop/releases/mac/BoxDrive-#{version}.pkg",
      verified: "e3.boxcdn.net/desktop/releases/mac/"
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
  depends_on macos: ">= :el_capitan"

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
    "~/Library/Application Support/Box/Box",
    "~/Library/Containers/com.box.desktop.findersyncext",
    "~/Library/Logs/Box/Box",
  ]
end
