cask "firefly" do
  version "1.7.4"
  sha256 "2baeb3d001958c631f81483a9b4952bfe2920dba0b1401d6622c0cad822f9db0"

  url "https://dl.firefly.iota.org/firefly-desktop-#{version}.dmg"
  name "Firefly"
  desc "Official wallet for IOTA"
  homepage "https://firefly.iota.org/"

  livecheck do
    url "https://dl.firefly.iota.org/latest-mac.yml"
    regex(/firefly[._-]desktop[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Firefly.app"

  uninstall quit: "org.iota.firefly"

  zap trash: [
    "~/Library/Application Support/Firefly",
    "~/Library/Logs/Firefly",
    "~/Library/Preferences/org.iota.firefly.helper.plist",
    "~/Library/Preferences/org.iota.firefly.plist",
    "~/Library/Saved Application State/org.iota.firefly.savedState",
  ]
end
