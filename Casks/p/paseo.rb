cask "paseo" do
  arch arm: "arm64", intel: "x64"

  version "0.12.0"
  sha256 arm:          "08243667106809abcafba986a432b3c3f0627856591737b427cc27669caf421b",
         intel:        "5e5ee27f163c35fc2b15366101134eda5a5070e9deec2b91f721f190b1014a72",
         x86_64_linux: "d095d7faeff0a3bc3e10220c0a26f8dd3c692147a1feb8f4cd4ecb1d6e777254"

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
