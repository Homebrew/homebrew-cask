cask "paper" do
  version "5.5.6"
  sha256 "0d3e50b6179399a87123962be93317c0f85fc987b2571cf5d332d748a27cbed7"

  url "https://www.paperapp.net/app/pap.er_v#{version}.dmg"
  name "pap.er"
  desc "Pap.er, 4K 5K HD Wallpaper Application"
  homepage "https://www.paperapp.net/"

  livecheck do
    url :homepage
    regex(/pap\.?er[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-12", because: :fails_gatekeeper_check

  auto_updates true
  depends_on :macos

  app "pap.er.app"

  uninstall quit: "com.w.paper"

  zap trash: [
    "~/Library/Application Scripts/com.w.paper",
    "~/Library/Containers/com.w.paper",
    "~/Library/Containers/com.w.paper-LaunchAtLoginHelper",
  ]
end
