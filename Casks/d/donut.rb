cask "donut" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "19e78a64b7c6dc0a20c4c0c22ecc0f7b9e5eddeea00e7e59ef35a01a7438f983",
         intel:        "082ee5c53582b54f6e8df010860b7444011351bcc21d604b459707779451fa1c",
         arm64_linux:  "bf6657c1010cb05e6281ba1b1a879cb1d7ab44fb8bc36678cc75bb3470e0a4a7",
         x86_64_linux: "f5bc8b5259ec9855c5ef825b051908b6aa282576c8f62e55c879b40d127e5806"

  on_macos do
    on_arm do
      version "0.35.5"

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
    version "0.35.5"

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
