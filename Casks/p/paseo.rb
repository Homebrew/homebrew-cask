cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.17.3"
  sha256 arm:          "9bb07774e0d70aeee75a677ed28eabaec4be324985a1f8f9e43b064e8ee33530",
         intel:        "7619235d835d394e8ab71289152147491a259dd50abe04b76b5258e5431b4c7e",
         x86_64_linux: "fc4c539ebdac54dc0fdd63081b847c8737695f2cb1473aafec5f5d7f6b841276"

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
