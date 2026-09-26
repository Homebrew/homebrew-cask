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
    version "11.1.0"
    sha256 "b6ae145a02dd9bbc7c44ce3fa42ec942daca8c829584e21c66290a8e6ca89af8"

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
    ]
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    version "11.1.0"
    sha256 arm64_linux:  "9655afa384a4900dee80c1fe34be407146bc852cdf2aac09a66788d7f6f44842",
           x86_64_linux: "07d0987fd46b3ec442c15b25b6ab78b29737d33a8095039f488f301103bca463"

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
