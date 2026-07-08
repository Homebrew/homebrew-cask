cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.1"
  sha256 arm:   "51d156ac63b2d2e00ccd58f74ae9cd95adcb42c2fe1c7c1b7ab649aa3a4ede18",
         intel: "e11b1086c781c59be0fc1798062b4170a79dc72879f08505eb8c0fc12f901be5"

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
