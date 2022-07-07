cask "sol" do
  version "1.1.31"
  sha256 "b665a08027f4a39a3c487e787ebcb88a0931836c6d1bbacf082f7593467e1b63"

  url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/#{version}.zip",
      verified: "raw.githubusercontent.com/ospfranco/sol/"
  name "Sol"
  desc "Launcher & command palette"
  homepage "https://github.com/ospfranco/sol"

  livecheck do
    url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

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
