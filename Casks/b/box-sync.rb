cask "box-sync" do
  version "4.0.8088"
  sha256 :no_check

  url "https://e3.boxcdn.net/box-installers/sync/Sync+4+External/Box%20Sync%20Installer.dmg",
      verified: "boxcdn.net/"
  name "Box Sync"
  desc "Cloud based collaboration and management platform focusing on security"
  homepage "https://www.box.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.box.sync"].version
    end
  end

  app "Box Sync.app"

  uninstall quit:   "com.box.sync",
            delete: [
              "/Library/PrivilegedHelperTools/com.box.sync.bootstrapper",
              "/Library/PrivilegedHelperTools/com.box.sync.iconhelper",
            ]

  zap trash: [
        "~/Library/Application Support/Box/Box Sync",
        "~/Library/Logs/Box/Box Sync",
      ],
      rmdir: "~/Library/Application Support/Box"

  caveats do
    requires_rosetta
  end
end
