cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.29"
  sha256 arm:          "33978f548db43d151018faaab7a6f5a33e3c6cc0a8100594d2d47f7ec7afe347",
         intel:        "33978f548db43d151018faaab7a6f5a33e3c6cc0a8100594d2d47f7ec7afe347",
         arm64_linux:  "a68d2548e03374bb9f7d696bc47a8d3f0c7eeafc47a866209d49b6c31b20f783",
         x86_64_linux: "c65b053e13a2a33fd564af073e663b4c0e022e543e47c53f3a5ee74157c626b8"

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

    zap trash: [
      "~/.cache/com.ccswitch.desktop",
      "~/.cc-switch",
      "~/.local/share/applications/cc-switch-handler.desktop",
      "~/.local/share/com.ccswitch.desktop",
    ]
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
