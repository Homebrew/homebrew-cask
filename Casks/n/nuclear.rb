cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.1"
  sha256 arm:   "37d049bc4d6c0199d8571a7357345278dbcee679c2eae5ea2d955a334f4ef6e8",
         intel: "48bb5077d0c5b5ac0c2f92372e99d35f2a8cf978a1d93e8b3365bfde75e8a6be"

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
