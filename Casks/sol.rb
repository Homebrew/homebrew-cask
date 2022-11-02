cask "sol" do
  version "1.1.94"
  sha256 "ae8dcd8d916e294cee1dacdf05cabc395933a646654e5e8e326bd7b0a3f78678"

  url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/#{version}.zip",
      verified: "raw.githubusercontent.com/ospfranco/sol/"
  name "Sol"
  desc "Launcher & command palette"
  homepage "https://github.com/ospfranco/sol"

  livecheck do
    url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "Sol.app"

  uninstall quit:      "com.ospfranco.sol",
            launchctl: "com.ospfranco.sol-LaunchAtLoginHelper"

  zap trash: [
    "~/Library/Application Scripts/com.ospfranco.sol-LaunchAtLoginHelper",
    "~/Library/Application Support/com.ospfranco.sol",
    "~/Library/Containers/com.ospfranco.sol-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/com.ospfranco.sol",
    "~/Library/Preferences/com.ospfranco.sol.plist",
  ]
end
