cask "mural" do
  version "2.0.0"
  sha256 "fb21a7dc9c3a2572df5575290b450ab251f18e882f3bcfbc627e452238709f88"

  url "https://download.mural.co/mac-app/Mural-#{version}.dmg"
  name "MURAL"
  desc "Visual online collaboration platform"
  homepage "https://mural.co/"

  livecheck do
    url "https://download.mural.co/mac-app/latest-mac.yml"
    strategy :electron_builder
  end

  app "MURAL.app"

  zap trash: [
    "~/Library/Application Support/murally-electron",
    "~/Library/Logs/MURAL",
    "~/Library/Logs/murally-electron",
    "~/Library/Preferences/co.mural.macOS.plist",
    "~/Library/Saved Application State/co.mural.macOS.savedState",
  ]
end
