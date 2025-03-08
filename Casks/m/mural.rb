cask "mural" do
  version "3.0.4"
  sha256 "7f92a2eb91e5824d6a5cd3eee8619cab2edb4fdce0da5a2bed7cf85a0a4846c9"

  url "https://download.mural.co/mac-app/Mural-#{version}.dmg"
  name "MURAL"
  desc "Visual online collaboration platform"
  homepage "https://mural.co/"

  livecheck do
    url "https://download.mural.co/mac-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "MURAL.app"

  zap trash: [
    "~/Library/Application Support/murally-electron",
    "~/Library/Logs/MURAL",
    "~/Library/Logs/murally-electron",
    "~/Library/Preferences/co.mural.macOS.plist",
    "~/Library/Saved Application State/co.mural.macOS.savedState",
  ]
end
