cask "menumeters" do
  version "2.0.8.2"
  sha256 "85d284e080251558fc840d54ee343ae004ab89594b1941a90f2a2cc4bcec198b"

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version}.zip"
  appcast "https://github.com/yujitach/MenuMeters/releases.atom"
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
