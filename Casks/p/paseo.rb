cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.11.2"
  sha256 arm:          "98f1394ec3a4a27bcb29eac32a97267e218f0bee9cdfddb4e30e3211c98fffa8",
         intel:        "fd0dbc757670b894f4b41e66d40e5a2d4af67843cd8fbbc3ff095fd7eb3bb5c9",
         x86_64_linux: "4b01028baa99a95c724b791683f4900c4d4ac1bddc69cd6cc3e0d34bd7cede0d"

  on_macos do
    url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

    app "Paseo.app"
    binary "#{appdir}/Paseo.app/Contents/Resources/bin/paseo"

    uninstall launchctl: "sh.paseo.desktop.ShipIt",
              quit:      "sh.paseo.desktop",
              script:    {
                executable: "#{appdir}/Paseo.app/Contents/Resources/bin/paseo",
                args:       ["daemon", "stop", "--force"],
              }

    zap trash: [
      "~/.paseo",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.paseo.desktop.sfl*",
      "~/Library/Application Support/Paseo",
      "~/Library/Caches/@getpaseodesktop-updater",
      "~/Library/Caches/sh.paseo.desktop",
      "~/Library/Caches/sh.paseo.desktop.ShipIt",
      "~/Library/HTTPStorages/sh.paseo.desktop",
      "~/Library/Logs/Paseo",
      "~/Library/Preferences/ByHost/sh.paseo.desktop.ShipIt.*.plist",
      "~/Library/Preferences/sh.paseo.desktop.plist",
    ]
  end
  on_linux do
    url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-x86_64.AppImage"

    depends_on arch: :x86_64

    app_image "Paseo-x86_64.AppImage", target: "Paseo.AppImage"

    zap trash: [
      "~/.config/Paseo",
      "~/.paseo",
    ]
  end

  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
