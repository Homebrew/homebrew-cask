cask "audacity" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macOS", linux: "linux"
  arch_suffix = on_system_conditional macos: "universal", linux: arch
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.0.0"

  on_macos do
    sha256 "03bdb378bc333695af8cba1ff0b91775cf17961a6f23a34edc6a94e3ca7c85ab"

    app "Audacity 4.app"

    uninstall quit: "org.audacityteam.audacity"

    zap trash: [
      "~/Library/Application Support/audacity",
      "~/Library/Preferences/org.audacityteam.audacity.plist",
      "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:   "e5def4e76febc4ab2dea7525a43aa62ddfa092434d164c1ea039687889a6104d",
           x86_64_linux: "772663b0b407be44232193b8402cde4da4665c7f6e81edb5b70e3b14e8b9b5b4"

    app_image "audacity-linux-#{version}-#{arch}.AppImage", target: "Audacity.AppImage"
  end

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-#{os}-#{version}-#{arch_suffix}.#{url_end}"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
