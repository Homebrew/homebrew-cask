cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "26a9e6fabf66cee8f4c0c37115dc861df5546d0f23bdf5bd67b1bd7f3bd87d92",
         intel:        "082ee5c53582b54f6e8df010860b7444011351bcc21d604b459707779451fa1c",
         arm64_linux:  "20b00c6b6409a16284b7a5cb968cba0509e5b1ff9ba5ca1d27d876a914b8adb0",
         x86_64_linux: "e2ab63fe6046c51516c6963505a1480ffbb8229af2eee8f0d3c952a9ec85ad37"

  on_macos do
    on_arm do
      version "0.34.0"

      livecheck do
        url :url
        strategy :github_latest
      end
    end
    on_intel do
      version "0.33.0"

      livecheck do
        skip "Legacy version"
      end

      deprecate! date: "2026-10-15", because: :discontinued
    end

    app "Donut.app"

    uninstall quit: "com.donutbrowser"

    zap trash: [
      "~/Library/Application Support/com.donutbrowser.Donut-Browser",
      "~/Library/Application Support/DonutBrowser",
      "~/Library/Caches/com.donutbrowser",
      "~/Library/Caches/DonutBrowser",
      "~/Library/LaunchAgents/com.donutbrowser.daemon.plist",
      "~/Library/Logs/com.donutbrowser",
      "~/Library/Preferences/com.donutbrowser.plist",
      "~/Library/WebKit/com.donutbrowser",
    ]
  end
  on_linux do
    version "0.34.0"

    livecheck do
      url :url
      strategy :github_latest
    end

    app_image "Donut_#{version}_#{arch}.AppImage", target: "Donut.AppImage"
  end

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_#{arch}.#{url_end}"
  name "Donut Browser"
  desc "Anti-detect web browser"
  homepage "https://donutbrowser.com/"

  auto_updates true
  conflicts_with cask: "donut@nightly"
end
