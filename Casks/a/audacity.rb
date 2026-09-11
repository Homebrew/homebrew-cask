cask "audacity" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.0.0"
  sha256 arm:          "266201f3151b09e46a5ab8e0ce1a16cefdd53a66fc7c979e943b2c88d6500c51",
         intel:        "4a5edd087bd5078aa2cd4e93c085a1172c9d791533c96b416a36bd82838a868b",
         arm64_linux:  "e5def4e76febc4ab2dea7525a43aa62ddfa092434d164c1ea039687889a6104d",
         x86_64_linux: "772663b0b407be44232193b8402cde4da4665c7f6e81edb5b70e3b14e8b9b5b4"

  on_macos do
    app "Audacity #{version.major}.app"

    uninstall quit: "org.audacityteam.audacity#{version.major}"

    zap quit:  "org.audacityteam.audacity#{version.major}",
        trash: [
          "~/Library/Application Support/audacity",
          "~/Library/Caches/Audacity",
          "~/Library/Preferences/org.audacityteam.Audacity#{version.major}.plist",
          "~/Library/Preferences/org.audacityteam.audacity.plist",
          "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
        ],
        rmdir: "~/Documents/Audacity#{version.major}"
  end
  on_linux do
    app_image "audacity-linux-#{version}-#{arch}.AppImage", target: "Audacity.AppImage"
  end

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-#{os}-#{version}-#{arch}.#{url_end}"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
