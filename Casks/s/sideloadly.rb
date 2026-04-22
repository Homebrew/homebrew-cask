cask "sideloadly" do
  version "0.60.0"
  sha256 :no_check

  url "https://sideloadly.io/SideloadlySetup.dmg"
  name "Sideloadly"
  desc "Sideload apps on iOS, Apple Silicon Macs, and Apple TV without jailbreak"
  homepage "https://sideloadly.io/"

  app "Sideloadly.app"

  caveats "Sideloadly requires Rosetta 2 to be installed."

  zap trash: [
    "~/Library/Application Support/Sideloadly",
    "~/Library/Preferences/io.sideloadly.daemon.plist",
    "~/Library/Preferences/io.sideloadly.sideloadly.plist",
  ]
end