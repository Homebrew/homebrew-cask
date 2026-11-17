cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:          "815cc124d7517413bc11801386d20f8f92e7e4a071f46ebb245094f89bdfd3e8",
         intel:        "3dba02370731ce4e493dccafad77f68ec32dac8b2d5ab33397d2962db1a92456",
         x86_64_linux: "a180e1b82ddbb5cc7344031858b00bf60e37831b8b3d22ab7baf312588a3e1a3"

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
