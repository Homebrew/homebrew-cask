cask "menumeters" do
  version "2.1.3"
  sha256 "6796a69f2e93bd1b5df4b10ef2650391c33444e20ef348e2066b50ea7365240e"

  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version}.zip",
      verified: "github.com/yujitach/MenuMeters/"
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
