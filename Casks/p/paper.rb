cask "paper" do
  version "5.5.5"
  sha256 "ccbef03d6fecf529e34c566034d8f052d5d719d3886fd19469cf27bfd078c16c"

  url "https://www.paperapp.net/app/pap.er_v#{version}.dmg"
  name "pap.er"
  desc "Pap.er, 4K 5K HD Wallpaper Application"
  homepage "https://www.paperapp.net/"

  livecheck do
    url :homepage
    regex(/pap\.?er[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "pap.er.app"

  uninstall quit: "com.w.paper"

  zap trash: [
    "~/Library/Application Scripts/com.w.paper",
    "~/Library/Containers/com.w.paper",
    "~/Library/Containers/com.w.paper-LaunchAtLoginHelper",
  ]
end
