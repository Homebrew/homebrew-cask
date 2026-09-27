cask "dockside" do
  version "2.9.34"
  sha256 "0caf26111c40adcd10b7b026ab894c00d5c4f7d6ae6e65072cc76c5d0b4d1170"

  url "https://github.com/PrajwalSD/Dockside/releases/download/v#{version}/Dockside.dmg"
  name "Dockside"
  desc "Dock utility"
  homepage "https://hachipoo.com/dockside-app"

  livecheck do
    url "https://prajwalsd.github.io/Dockside/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Dockside.app"

  zap trash: [
    "~/Library/Application Scripts/8T2DC9NRXS.group.com.hachipoo.Dockside",
    "~/Library/Application Scripts/com.hachipoo.Dockside.Dockside*",
    "~/Library/Caches/com.hachipoo.Dockside",
    "~/Library/Containers/com.hachipoo.Dockside.Dockside*",
    "~/Library/Group Containers/8T2DC9NRXS.group.com.hachipoo.Dockside",
    "~/Library/HTTPStorages/com.hachipoo.Dockside",
    "~/Library/Preferences/com.hachipoo.Dockside.plist",
  ]
end
