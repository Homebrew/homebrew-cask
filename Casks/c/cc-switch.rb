cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "3.20.4"
  sha256 arm:          "ae31df43fbd9b5d41e5640aafd4cbbe7e5abc3bff126222af5ca09a92b08c8b5",
         intel:        "ae31df43fbd9b5d41e5640aafd4cbbe7e5abc3bff126222af5ca09a92b08c8b5",
         arm64_linux:  "6769348295993b8fc62dcc1b7f3f1dcb94ab27ceeabd3af58e9ececba13189d3",
         x86_64_linux: "c8d66d8193fd00fd12239bd06a8c50f517badbf50d9020a4662e95e907b318ef"

  on_macos do
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
    app_image "CC-Switch-v#{version}-Linux-#{arch}.AppImage", target: "CC Switch.AppImage"
  end

  url "https://github.com/farion1231/cc-switch/releases/download/v#{version}/CC-Switch-v#{version}-#{url_end}"
  name "CC Switch"
  desc "Configuration manager for AI coding agents"
  homepage "https://github.com/farion1231/cc-switch"

  auto_updates true
end
