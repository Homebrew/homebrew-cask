cask "menumeters" do
  version "2.1.6"
  sha256 "05234808cdfd8acfc8df6f9cd58b7b05196b23feb6a35aaaf9d302164e39c4dc"

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
    "~/Library/PreferencesPanes/MenuMeters.prefPane",
    "~/Library/Preferences/com.ragingmenace.MenuMeters.plist",
    "~/Library/Preferences/com.yujitach.MenuMeters.plist",
  ]
end
