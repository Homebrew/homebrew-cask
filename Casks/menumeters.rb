cask "menumeters" do
  version "2.0.7"
  sha256 "a63217c32670f19913f2f814c91b760b5df57413649440e8f1c80821b763713e"

  url "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/zips/MenuMeters_#{version}.zip"
  appcast "https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/MenuMeters-Update.xml"
  name "MenuMeters for El Capitan (and later)"
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
