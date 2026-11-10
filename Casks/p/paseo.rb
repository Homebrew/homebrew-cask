cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.15.4"
  sha256 arm:          "b689017a0137480e6ba8231d97016b94570e8dfc6d0e23c4d833867765cfbcc1",
         intel:        "3c21568c9af6705701679d7fe8664e0385bdba48bf9119d5b13b36956ac9fde3",
         x86_64_linux: "a35de13bb9642e75e418c2906ef54ab24c5364140645199d2cf2d9ef3d5c7797"

  on_macos do
    url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

    app "Paseo.app"
    binary "#{appdir}/Paseo.app/Contents/Resources/bin/paseo"

    uninstall launchctl: "sh.paseo.desktop.ShipIt",
              quit:      "sh.paseo.desktop",
              script:    {
                executable:   "#{appdir}/Paseo.app/Contents/Resources/bin/paseo",
                args:         ["daemon", "stop", "--force"],
                must_succeed: false,
              }

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/sh.paseo.desktop.sfl*",
          "~/Library/Application Support/Paseo",
          "~/Library/Caches/@getpaseodesktop-updater",
          "~/Library/Caches/sh.paseo.desktop",
          "~/Library/Caches/sh.paseo.desktop.ShipIt",
          "~/Library/HTTPStorages/sh.paseo.desktop",
          "~/Library/Logs/Paseo",
          "~/Library/Preferences/ByHost/sh.paseo.desktop.ShipIt.*.plist",
          "~/Library/Preferences/sh.paseo.desktop.plist",
        ],
        rmdir: "~/.paseo"
  end
  on_linux do
    url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo-x86_64.AppImage"

    depends_on arch: :x86_64

    app_image "Paseo-x86_64.AppImage", target: "Paseo.AppImage"

    zap trash: "~/.config/Paseo"
  end

  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
end
