cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.15"
  sha256 arm:          "b17b3422ba6c161fb8d0e570b7da070996abf79f634c8cbae754341969fd39c6",
         intel:        "b17b3422ba6c161fb8d0e570b7da070996abf79f634c8cbae754341969fd39c6",
         arm64_linux:  "68580ef15b8a7294c3d45b51ff29f64195831a427e36114e9bd40ae3fecf8cc9",
         x86_64_linux: "d2f636ed121acb4ed26cd41ce3b994e79b049ed7c23ef8f32e72471235d678da"

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
