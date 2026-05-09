cask "sol" do
  version "2.1.333"
  sha256 "926cd908cdd078dc3111638826d0e577599721c47efa236acad2b2d21a6c103c"

  url "https://github.com/ospfranco/sol/releases/download/#{version}/#{version}.zip"
  name "Sol"
  desc "Launcher & command palette"
  homepage "https://github.com/ospfranco/sol"

  livecheck do
    url "https://raw.githubusercontent.com/ospfranco/sol/main/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"

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
