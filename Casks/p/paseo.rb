cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:          "02904ffbfd6abed29010ddbc3005ed8c07cb093020e6f4d9c2fa917b8c1cacb4",
         intel:        "d78d78ee1ff6b63a0945ea45d8ec4ebd6cfe1e2e443e3d227ba3013a0e197482",
         x86_64_linux: "acd4403eb11f7b0c2ea4b2430dcec4af06b91f02cb60227e2df620121c5a56f7"

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
