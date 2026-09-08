cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "3.20.2"

  on_macos do
    sha256 "847327c8acf320b8f3e1122676dd3921ff4dc7aa02ed1974579c8d7b00894dec"

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
    sha256 arm64_linux:  "13718d69fe4d8db6898b5f14e91b0f6e0d4f6a3b308549dcaf16bd2c4711ff51",
           x86_64_linux: "51b871f2b3464429fe19958613fe1bf63b3bef688499b5676ce7a859e64b5f12"

    app_image "CC-Switch-v#{version}-Linux-#{arch}.AppImage", target: "CC Switch.AppImage"
  end

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-#{url_end}"
  name "CC Switch"
  desc "Configuration manager for AI coding agents"
  homepage "https://github.com/farion1231/cc-switch"

  auto_updates true
end
