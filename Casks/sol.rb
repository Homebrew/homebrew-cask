cask "sol" do
  version "1.1.136"
  sha256 "989ece14a33cfc6a1614b22231ce16e968b0a1faf761017912da9da1238c388d"

  url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/#{version}.zip",
      verified: "raw.githubusercontent.com/ospfranco/sol/"
  name "Sol"
  desc "Launcher & command palette"
  homepage "https://github.com/ospfranco/sol"

  livecheck do
    url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

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
