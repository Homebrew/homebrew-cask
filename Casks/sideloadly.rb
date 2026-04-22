cask "sideloadly" do
  version "0.60.0"
  sha256 "428d062af1ca819712fb12cb0ace25fa49c80d9735c73cda3cbaf09ffcd63212"

  url "https://sideloadly.io/SideloadlySetup.dmg"
  name "Sideloadly"
  desc "Sideload apps on iOS, Apple Silicon Macs, and Apple TV without jailbreak"
  homepage "https://sideloadly.io/"

  app "Sideloadly.app"

  zap trash: [
    "~/Library/Application Support/Sideloadly",
    "~/Library/Preferences/io.sideloadly.daemon.plist",
    "~/Library/Preferences/io.sideloadly.sideloadly.plist",
  ]
end
