cask "paper" do
  version "5.5.3"
  sha256 "0e4e5cb29c59519356380eca4e262780719a59d08db810a6e2eaf6b8b9b3720b"

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
