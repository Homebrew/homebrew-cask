cask "fs-uae-launcher" do
  arch arm: "ARM64", intel: "x86-64"

  version "3.2.35"
  sha256 arm:   "859a5889e82df6d59b3e23ea6f96313e3ab59ee4bedc9ee0ff9aa86a1113fa71",
         intel: "d7d23200cdb1f568f97336d6b48f9ef6d3cf58a9e628b7feba5c4ff38cb08d39"

  url "https://github.com/FrodeSolheim/fs-uae-launcher/releases/download/v#{version}/FS-UAE-Launcher_#{version}_macOS_#{arch}.dmg",
      verified: "github.com/FrodeSolheim/fs-uae-launcher/"
  name "FS-UAE Launcher"
  desc "Amiga emulator launcher"
  homepage "https://fs-uae.net/"

  livecheck do
    url "https://fs-uae.net/download/macos/"
    regex(/href=.*?FS[._-]UAE[._-]Launcher[._-](\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}/i)
  end

  app "FS-UAE Launcher.app"

  zap trash: [
    "~/Library/Preferences/fs-uae-launcher",
    "~/Library/Saved Application State/no.fengestad.fs-uae-launcher.savedState",
  ]
end
