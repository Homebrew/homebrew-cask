cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.39.1"
  sha256 arm:   "cb85a834a0e1f5d114056ffec18f677e1e4df730b341fc78ce0cf70c30b2a14c",
         intel: "83f850a52d13d64dc84a96bf4ab0272f217e3c7bb5655ba05c963677a9a73c7c"

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
