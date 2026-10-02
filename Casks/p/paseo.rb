cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.10.3"
  sha256 arm:          "d29063490fbcd0fed48442ca6de0286ca78a007d0650e4ad63ff477b7e12933a",
         intel:        "d9e3e32ec4d9cb84ed7e9fa95061b7816c9af30052213118597f0deade2587ee",
         x86_64_linux: "491bb6e604d210389ec762b07a62ea89f826bea15f995d83a67037a590f39a13"

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
