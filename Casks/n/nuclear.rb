cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.4"
  sha256 arm:   "46dc78ebdafecef0d98224b2e4a3b9fb647cf780ccd168e0c40b951e686fa465",
         intel: "a853436a8ec4cee8ddfc5f749db7fbcc757afea8688cc5098ce5203a20a22236"

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

  depends_on :macos

  app "Nuclear.app"

  zap trash: [
    "~/Library/Application Support/nuclear",
    "~/Library/Logs/nuclear",
    "~/Library/Preferences/nuclear.plist",
    "~/Library/Saved Application State/nuclear.savedState",
  ]
end
