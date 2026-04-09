cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.33.2"
  sha256 arm:   "fa13bb777b62e31ff9be5e13a0e938713d377ff65ce0ddb6336a38eb342a5b43",
         intel: "1706080dfb48f2f24b60c0cb3e1f1a3b5713294d6888d79767f6cdb577180fed"

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
