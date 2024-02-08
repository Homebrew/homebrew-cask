cask "menumeters" do
  version "2.1.6.1"
  sha256 "6c8a1a62e5f84ca043898e2503f4750c8cd8447588c6fb52d3be9c505a5cdff8"

  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version}.zip",
      verified: "github.com/yujitach/MenuMeters/"
  name "MenuMeters for El Capitan (and later)"
  desc "Set of CPU, memory, disk, and network monitoring tools"
  homepage "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "MenuMeters.app"

  uninstall quit: "com.yujitach.MenuMeters"

  zap trash: [
    "~/Library/Caches/com.yujitach.MenuMeters",
    "~/Library/Preferences/com.ragingmenace.MenuMeters.plist",
    "~/Library/Preferences/com.yujitach.MenuMeters.plist",
    "~/Library/PreferencesPanes/MenuMeters.prefPane",
  ]
end
