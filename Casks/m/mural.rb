cask "mural" do
  version "3.0.1"
  sha256 "634e07489d9ea1c7383a6a6cc58096556008c1d287c5f49986859d95c4a62f2d"

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
