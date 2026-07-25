cask "exo" do
  version "1.0.71"
  sha256 "bc81a23ec647a995c5f8237857e749bc3de7ba8ec40f2aab39886c1a04beaac7"

  url "https://assets.exolabs.net/EXO-#{version}.dmg"
  name "EXO"
  desc "Run AI models locally across multiple devices"
  homepage "https://exolabs.net/"

  livecheck do
    url "https://assets.exolabs.net/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "EXO.app"

  uninstall launchctl: "io.exo.networksetup",
            quit:      "exolabs.EXO",
            delete:    [
              "/Library/Application Support/EXO/disable_bridge.sh",
              "/Library/Application Support/EXO/disable_bridge_enable_dhcp.sh",
              "/Library/LaunchDaemons/io.exo.networksetup.plist",
            ],
            rmdir:     [
              "/Library/Application Support/EXO",
              "~/.exo",
            ]

  zap trash: [
    "~/Library/Application Support/exolabs.EXO",
    "~/Library/Caches/exolabs.EXO",
    "~/Library/HTTPStorages/exolabs.EXO",
    "~/Library/Preferences/exolabs.EXO.plist",
    "~/Library/Saved Application State/exolabs.EXO.savedState",
  ]
end
