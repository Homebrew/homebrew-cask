cask "sol" do
  version "2.1.160"
  sha256 "28ac7c949f9080d643b08eab8f18167ada34af21bd5e7beeb51fbdff5986396b"

  url "https://github.com/ospfranco/sol/releases/download/#{version}/#{version}.zip"
  name "Sol"
  desc "Launcher & command palette"
  homepage "https://github.com/ospfranco/sol"

  livecheck do
    url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "Sol.app"

  uninstall launchctl: "com.ospfranco.sol-LaunchAtLoginHelper",
            quit:      "com.ospfranco.sol"

  zap trash: [
    "~/Library/Application Scripts/com.ospfranco.sol-LaunchAtLoginHelper",
    "~/Library/Application Support/com.ospfranco.sol",
    "~/Library/Containers/com.ospfranco.sol-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/com.ospfranco.sol",
    "~/Library/Preferences/com.ospfranco.sol.plist",
  ]
end
