cask "cc-switch" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS.dmg", linux: "Linux-#{arch}.AppImage"

  version "4.0.7"
  sha256 arm:          "44c8117c260c876df259b0afd2a76ef5b113d1007bb9d518e77f449c9ceb172b",
         intel:        "44c8117c260c876df259b0afd2a76ef5b113d1007bb9d518e77f449c9ceb172b",
         arm64_linux:  "3d555afdcc0cc16f66219126ec559e3dca8cfe74c0804b7b888e4a823b909d09",
         x86_64_linux: "e3137fc8cbc9efd0160d3c6f4e480283323f478f054e0389ee0ff42c968bf722"

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
