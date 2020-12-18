cask "menumeters" do
  version "2.1.2.2"
  sha256 "42e8de5f751d162ddc076c8b4c831b8a073e179fe34976a3c90657e8ddad303b"

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
