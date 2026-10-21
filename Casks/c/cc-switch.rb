cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.18"
  sha256 arm:          "72ca7a03ba64a9122783720bb64b253ee2fb87aefc9296bd2f761b11333e0509",
         intel:        "72ca7a03ba64a9122783720bb64b253ee2fb87aefc9296bd2f761b11333e0509",
         arm64_linux:  "a4b9dfe9e2025e1091a79df8830613f8cd4844268dfc3a909ecc9d4779ca6a66",
         x86_64_linux: "38486e1ca1c94f63001e26149dc3ce359358ed78da7f89d4cc345b88bd8ddd47"

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

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
