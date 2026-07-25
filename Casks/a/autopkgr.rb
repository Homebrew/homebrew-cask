cask "autopkgr" do
  version "2.0"
  sha256 "05955ffd7cc7e6e18b099aae1c3e2a373350543366e604bd540958148ce729e7"

  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg",
      verified: "github.com/lindegroup/autopkgr/"
  name "AutoPkgr"
  desc "Install and configure AutoPkg"
  homepage "https://www.lindegroup.com/autopkgr"

  livecheck do
    url "https://raw.githubusercontent.com/lindegroup/autopkgr/appcast/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AutoPkgr.app"

  zap trash: [
    "~/Library/Application Support/AutoPkgr",
    "~/Library/Caches/com.lindegroup.AutoPkgr",
    "~/Library/HTTPStorages/com.lindegroup.AutoPkgr",
    "~/Library/HTTPStorages/com.lindegroup.AutoPkgr.binarycookies",
    "~/Library/Preferences/com.lindegroup.AutoPkgr.plist",
  ]
end
