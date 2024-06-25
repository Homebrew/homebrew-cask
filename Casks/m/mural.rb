cask "mural" do
  version "3.0.0"
  sha256 "12f5246d191b199fdaa93513b1ed10234d9275ca8fd35eb6b7fe04ef7b4cf39f"

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
