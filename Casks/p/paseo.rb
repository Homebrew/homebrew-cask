cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.17.6"
  sha256 arm:          "3807556e33e6680a982138c534033b1e2101a6fc5a1c84ceb53d3614be6dfce5",
         intel:        "46ea1878758ce036b92546d289e1ab683521484b1d749b4db0511cd565d4720e",
         x86_64_linux: "70c46dc52f903baf45657c5d76d0edf0a26507bd9e288f345570202d0c233703"

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
