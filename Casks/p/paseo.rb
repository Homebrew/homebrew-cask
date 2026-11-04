cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.15.0"
  sha256 arm:          "7165bcd45cfd229a827eb11b4f991596b9a85f1cd816ec1ef854097a9d2752cf",
         intel:        "75e6ae4559addfc68b512d5cf4dde90ba8c2f232f2cd341f66df4375f92881fc",
         x86_64_linux: "223c47a9ab76cdfc146c6cd6e87a0653f4c03790930397fa3e268d126139a61c"

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
