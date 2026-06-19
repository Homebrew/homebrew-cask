cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.5"
  sha256 arm:   "8aff8361db87ebbe92fc9861684ca37a83be9eaf0f5572c6528e96c646282dd1",
         intel: "b5c1f880ffbe55bf970a3045f7379e004a06e0de82bf02568dad4bcb170c806e"

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
