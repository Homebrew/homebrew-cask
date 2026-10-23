cask "alcom" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "ALCOM", linux: "alcom"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.9"
  sha256 arm:          "fc6c873830194433fd572f917cb4efb30d61de6202507b7e7cf4545debf2d044",
         intel:        "fc6c873830194433fd572f917cb4efb30d61de6202507b7e7cf4545debf2d044",
         arm64_linux:  "7cc0c9a84dc857110d415fe7854b809043073b269f5bf345e1f67a3c3c2b5aee",
         x86_64_linux: "18cd5358ac38efffcc7e1310798a4f6b733f50d585b715c0663aa81d56c59bf8"

  on_macos do
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
