cask "dockside" do
  version "2.9.29"
  sha256 "20ded3846a6c74121c127c5a5e26e50834a5a52fc2be6735c333c20c9ad9daaf"

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
