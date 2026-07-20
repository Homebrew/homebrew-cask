cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.0"
  sha256 arm:   "cba68369bc245a37f6f3f92ed283c839576726a835a334dda0b2fdbcd3ed630c",
         intel: "bc891bb905fb26a42c98df73e96e1096136f1b3432bc1d81b20ee4f5312ce02b"

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
