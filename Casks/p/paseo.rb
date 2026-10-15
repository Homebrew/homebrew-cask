cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.11.4"
  sha256 arm:          "4ced2ca07d131d9c434b1dc3d8fe862c241c1dda746f22398dc18505e4b3fc8b",
         intel:        "79bd318ae1a207f4be3748d9ee00fd56ee7c18b53363ee5122dc5298e8cba6e8",
         x86_64_linux: "0af093805537d411e54fee8c39fae40aaeca3158c35c0df7280ae71425128871"

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
