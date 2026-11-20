cask "alcom" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "ALCOM", linux: "alcom"
  arch_end = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.1.10"
  sha256 arm:          "53d62c3750e07426631aeffb1a16cd656038e9e61d5da3dd37c57ec44641f506",
         intel:        "53d62c3750e07426631aeffb1a16cd656038e9e61d5da3dd37c57ec44641f506",
         arm64_linux:  "4808e39c0c6ac8e08f6428e84003a4e700f25202fc275a519418769d8dc43aad",
         x86_64_linux: "b91c1600de5e21cb915bdc7defbf402e9d30fadfa261ad1bee651e148ed71e92"

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

    zap trash: "~/.local/share/com.anatawa12.vrc-get-gui"
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
