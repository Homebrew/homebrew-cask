cask "menumeters" do
  version "2.1.7"
  sha256 "77aba126fbc1020c6c6e61ce7213ae823281ce927ac0140cf5ca91f819b85d06"

  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version}.zip"
  name "MenuMeters for El Capitan (and later)"
  desc "Set of CPU, memory, disk, and network monitoring tools"
  homepage "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/"

  livecheck do
    url "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/MenuMeters-Update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "MenuMeters.app"

  uninstall quit: "com.yujitach.MenuMeters"

  zap trash: [
    "~/Library/Caches/com.yujitach.MenuMeters",
    "~/Library/Preferences/com.ragingmenace.MenuMeters.plist",
    "~/Library/Preferences/com.yujitach.MenuMeters.plist",
    "~/Library/PreferencesPanes/MenuMeters.prefPane",
  ]
end
