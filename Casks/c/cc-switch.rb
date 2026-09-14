cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "3.20.3"
  sha256 arm:          "cff3bf8ccd06a6dacde8fd93ac88467fcba8926f96bedccba63174a7efcabde7",
         intel:        "cff3bf8ccd06a6dacde8fd93ac88467fcba8926f96bedccba63174a7efcabde7",
         arm64_linux:  "4b22f18c13f4cfb1405aa2217a16f6b63cb600605f853f9051bd169a6e8b1f99",
         x86_64_linux: "206bdad08b62ad2fdb57e52eace2227ba82f40f5fb743ab9934291aee69358f3"

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
