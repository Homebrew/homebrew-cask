cask "mural" do
  version "1.0.11"
  sha256 "365452a37a09349cab4af69c13db7177f8fa2e9501c25b80933f106d82956a65"

  url "https://download.mural.co/mac-app/MURAL-#{version}.dmg"
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
