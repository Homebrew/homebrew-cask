cask "sol" do
  version "1.1.20"
  sha256 :no_check

  url "https://github.com/ospfranco/sol/releases/latest/download/Sol.zip"
  name "Sol"
  desc "Creative Open Source Launcher"
  homepage "https://github.com/ospfranco/sol"

  depends_on macos: ">= :mojave"

  app "Sol.app"

  uninstall quit:      "com.ospfranco.sol",
            launchctl: "com.ospfranco.sol-LaunchAtLoginHelper"

  zap trash: [
    "~/Library/Application Scripts/com.ospfranco.sol-LaunchAtLoginHelper",
    "~/Library/Application Support/com.ospfranco.sol",
    "~/Library/HTTPStorages/com.ospfranco.sol",
    "~/Library/Containers/com.ospfranco.sol-LaunchAtLoginHelper",
    "~/Library/Preferences/com.ospfranco.sol.plist",
  ]
end
