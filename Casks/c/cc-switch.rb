cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.22"
  sha256 arm:          "d79c1e81d93e4e561ec9094b3de1e79eee1590dfc5751dc7b30004b1986f0b70",
         intel:        "d79c1e81d93e4e561ec9094b3de1e79eee1590dfc5751dc7b30004b1986f0b70",
         arm64_linux:  "b00ffbe004fe7885ddc7fa33badb965a2cf4d626a259287ea9a4f89fa78bc66e",
         x86_64_linux: "9090a1bc5f58ccbc72444302c1a3d8001dd1b00fbff7b0d6b64bd1be58077313"

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
