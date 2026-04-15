cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.33.3"
  sha256 arm:   "81dd90d6fa4dabe04e9f9695860e622acb8f93c111946a2be4eb71a06d4f42ae",
         intel: "c628e1775673defeadb390acb473dd44f872d437fcd064a3f3ac3723c7f53fbe"

  url "https://github.com/nukeop/nuclear/releases/download/player%40#{version}/Nuclear_#{version}_#{arch}.dmg",
      verified: "github.com/nukeop/nuclear/"
  name "Nuclear"
  desc "Streaming music player"
  homepage "https://nuclearplayer.com/"

  livecheck do
    url :url
    regex(/^(?:player@)?v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
