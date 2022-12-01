cask "sol" do
  version "1.1.114"
  sha256 "4b68e5ed918806adf68cc88f8663eb0694985803018d47a2d5b2bfd95d4f1476"

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
