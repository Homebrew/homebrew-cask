cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  sha256 arm:          "47a717f079914cd1091d7ca00b2dab9120d9b97ba16aa3695180a78c087f209a",
         intel:        "082ee5c53582b54f6e8df010860b7444011351bcc21d604b459707779451fa1c",
         arm64_linux:  "f1c92d51072fd1033e2602c52d8d681b8869564044fd29aeee4fffc09060e80e",
         x86_64_linux: "8468bcac6008af24c8a8ba63e907ee5b43504380fbd291d921c8949ad784a3a7"

  on_macos do
    on_arm do
      version "0.36.0"

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
    version "0.36.0"

    livecheck do
      url :url
      strategy :github_latest
    end

    app_image "Donut_#{version}_#{arch}.AppImage", target: "Donut.AppImage"

    zap trash: [
      "~/.cache/DonutBrowser",
      "~/.local/share/com.donutbrowser",
      "~/.local/share/DonutBrowser",
    ]
  end

  url "https://github.com/zhom/donutbrowser/releases/download/v#{version}/Donut_#{version}_#{arch}.#{os}"
  name "Donut Browser"
  desc "Anti-detect web browser"
  homepage "https://donutbrowser.com/"

  auto_updates true
  conflicts_with cask: "donut@nightly"
end
