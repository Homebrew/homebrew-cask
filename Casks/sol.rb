cask "sol" do
  version "1.1.52"
  sha256 "d6e5c46d452896da073d5c1923cf95782889fbfcadd86c9061ee07eb08ff98c8"

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
