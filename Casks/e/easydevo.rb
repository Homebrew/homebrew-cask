cask "easydevo" do
  os macos: "Mac", linux: "Linux"
  url_end = on_system_conditional macos: "-Installer.dmg", linux: ".AppImage"

  version "0.3.4"

  on_macos do
    sha256 "3795f382bcb765a11b83ddb66c3f860471f23518f26a85c08ed08426a7711b79"

    app "EasyDevo.app"

    zap trash: [
      "~/Library/Application Support/EasyDevo",
      "~/Library/Logs/EasyDevo",
      "~/Library/Preferences/dev.strrl.easydevo.plist",
      "~/Library/Saved Application State/dev.strrl.easydevo.savedState",
    ]
  end
  on_linux do
    sha256 "910cd274948da5c96cf9e654b9aaad14243628d33a6c4c074454422089444f45"

    depends_on arch: :x86_64

    app_image "EasyDevo-Linux-#{version}.AppImage", target: "EasyDevo.AppImage"
  end

  url "https://github.com/boring-design/EasyDevo-Distro/releases/download/v#{version}/EasyDevo-#{os}-#{version}#{url_end}",
      verified: "github.com/boring-design/EasyDevo-Distro/"
  name "EasyDevo"
  desc "Elegant tool built for coding"
  homepage "https://easydevo.boringboring.design/"

  auto_updates true
end
