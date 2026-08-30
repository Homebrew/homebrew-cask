cask "prismlauncher" do
  on_big_sur :or_older do
    version "9.4"
    sha256 "5cc0148e427d28c632978a9e83e2da3fc02f5072990d9e7732dff3fdb1912ae4"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "11.0.3"
    sha256 "b8e06ef55ec78fceddfa9f4270b3d4d93f2606b83f70ad6a2c6dde90f2b65408"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip"

    livecheck do
      url "https://prismlauncher.org/feed/appcast.xml"
      strategy :sparkle
    end
  end
  on_macos do
    depends_on macos: :big_sur

    app "Prism Launcher.app"
    binary "#{appdir}/Prism Launcher.app/Contents/MacOS/prismlauncher"

    zap trash: [
      "~/Library/Application Support/PrismLauncher/metacache",
      "~/Library/Application Support/PrismLauncher/PrismLauncher-*.log",
      "~/Library/Application Support/PrismLauncher/prismlauncher.cfg",
      "~/Library/Preferences/org.prismlauncher.PrismLauncher.plist",
      "~/Library/Saved Application State/org.prismlauncher.PrismLauncher.savedState",
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    version "11.0.3"
    sha256 arm64_linux:  "e4aa885be2cc1184bf3266c51462bc776343482202b46f0fd5ce32dcdbb4f002",
           x86_64_linux: "0823a0e5f53694f0ff65a9523b6f221e6f10565b904941fa9522d89e8e7c69d1"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-Linux-#{arch}.AppImage"

    livecheck do
      url :url
      strategy :github_latest
    end

    app_image "PrismLauncher-Linux-#{arch}.AppImage", target: "Prism Launcher.AppImage"

    zap trash: [
      "~/.local/share/PrismLauncher/metacache",
      "~/.local/share/PrismLauncher/PrismLauncher-*.log",
      "~/.local/share/PrismLauncher/prismlauncher.cfg",
    ]
  end

  name "Prism Launcher"
  desc "Minecraft launcher"
  homepage "https://prismlauncher.org/"

  auto_updates true
end
