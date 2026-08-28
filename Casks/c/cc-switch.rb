cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "3.20.1"

  on_macos do
    sha256 "b317ba783f1fa6ea0f97c297c363a8f9193b3a1577a649a1dc1d535774c52dab"

    depends_on macos: :monterey

    app "CC Switch.app"

    zap trash: [
      "~/.cc-switch",
      "~/Library/Application Support/com.ccswitch.desktop",
      "~/Library/Caches/com.ccswitch.desktop",
      "~/Library/Preferences/com.ccswitch.desktop.plist",
      "~/Library/Saved Application State/com.ccswitch.desktop.savedState",
      "~/Library/WebKit/com.ccswitch.desktop",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "ff27d86cf9e4db90d97e18d039c0b8e93493bb1d981750d7fb1111f60bc90c68",
           x86_64_linux: "d735cd84589d55cf4baf6ca460e7ee512a11b7b03a913deea1fec148050d1c46"

    app_image "CC-Switch-v#{version}-Linux-#{arch}.AppImage", target: "CC Switch.AppImage"
  end

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-#{url_end}"
  name "CC Switch"
  desc "Configuration manager for AI coding agents"
  homepage "https://github.com/farion1231/cc-switch"

  auto_updates true
end
