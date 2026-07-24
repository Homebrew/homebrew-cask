cask "paper" do
  version "5.5.2"
  sha256 "852ee6644bae7e7261e536a93b4a5d25804f712d41425597a295e0f7adbf4c1e"

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
    "~/Library/Containers/com.w.paper",
    "~/Library/Containers/com.w.paper-LaunchAtLoginHelper",
  ]
end
