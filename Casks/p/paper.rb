cask "paper" do
  version "5.5.0"
  sha256 "59c4cb97a31a85be754c5516a095628a12d16fede9e4564c02bc743158b25f89"

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
