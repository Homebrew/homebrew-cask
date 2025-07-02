cask "bcut" do
  version "3.5.3"
  sha256 "873fcbba7913852996377877bead1d484e0fce1ac126aea7a59531d9775c2091"

  url "https://boss.hdslb.com/bcut_pc_pkg/static/87ba231b335580c837a2725c0ca22823/BCUT-#{version}.dmg",
      verified: "boss.hdslb.com/"
  name "Bcut"
  name "必剪"
  desc "Professional video editing software by Bilibili"
  homepage "https://bcut.bilibili.cn/"

  livecheck do
    skip "No reliable version detection"
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "BCUT.app"

  zap trash: [
    "~/Library/Application Support/bcut",
    "~/Library/Caches/cn.bilibili.bcut",
    "~/Library/HTTPStorages/cn.bilibili.bcut",
    "~/Library/Logs/bcut",
    "~/Library/Preferences/cn.bilibili.bcut.plist",
    "~/Library/Saved Application State/cn.bilibili.bcut.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
