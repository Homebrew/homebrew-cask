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
    version "11.1.1"
    sha256 "15126a7df57acb4f37fe581dad68cb03c7bb60b70eb82345f8bb3246235600c6"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-macOS-#{version}.zip"

    livecheck do
      url "https://prismlauncher.org/feed/appcast.xml"
      strategy :sparkle
    end
  end
  on_macos do
    app "Prism Launcher.app"
    binary "#{appdir}/Prism Launcher.app/Contents/MacOS/prismlauncher"

    zap trash: [
      "~/Library/Application Support/PrismLauncher/metacache",
      "~/Library/Application Support/PrismLauncher/PrismLauncher-*.log",
      "~/Library/Application Support/PrismLauncher/prismlauncher.cfg",
      "~/Library/Preferences/org.prismlauncher.PrismLauncher.plist",
      "~/Library/Saved Application State/org.prismlauncher.PrismLauncher.savedState",
      "~/Library/WebKit/org.prismlauncher.PrismLauncher",
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    version "11.1.1"
    sha256 arm64_linux:  "88fce57f75405092dac69e21968537083aa2881dbca0bfb3b0d85d9c05f8085b",
           x86_64_linux: "bb81038c56a09e944659e4b808dbfbc52d52d5e3a3ffe32216689a3ca1508d3d"

    url "https://github.com/PrismLauncher/PrismLauncher/releases/download/#{version}/PrismLauncher-Linux-#{arch}.AppImage"

    livecheck do
      url :url
      strategy :github_latest
    end

    app_image "PrismLauncher-Linux-#{arch}.AppImage", target: "PrismLauncher.AppImage"

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
