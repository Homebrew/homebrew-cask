cask "alcom" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "ALCOM", linux: "alcom"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.8"

  on_macos do
    sha256 "583167060ed4369f7f16fe64db3bf25a115add6232eec5cab1f5cb2578bae65c"

    app "ALCOM.app"

    zap trash: [
      "~/Library/Caches/com.anataw12.vrc-get",
      "~/Library/Preferences/com.anataw12.vrc-get.plist",
      "~/Library/Saved Application State/com.anataw12.vrc-get.savedState",
      "~/Library/WebKit/com.anataw12.vrc-get",
      "~/Library/WebKit/vrc-get-gui",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "162547b2cceffeb87881bf42e452044d2f9991b744f7a860fcae05051870f2c8",
           x86_64_linux: "e1cff837547e43e93c23e8d23164ade36f8b0df4a1244b3bebf3e5e668d009bc"

    app_image "alcom-#{version}-#{arch}.AppImage", target: "ALCOM.AppImage"
  end

  url "https://github.com/vrc-get/vrc-get/releases/download/gui-v#{version}/#{os}-#{version}-#{arch_end}.#{url_end}"
  name "ALCOM"
  desc "Graphical frontend of vrc-get, open source alternative to VRChat Package Manager"
  homepage "https://vrc-get.anatawa12.com/alcom"

  livecheck do
    url :url
    regex(/^gui[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
