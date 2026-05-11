cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "5d4c7f695846d12ea385061d3a9dcdfeca7bef3334d143883d00b7b8c020e041",
         intel: "fd30dc67ecff84559f05fb1800df453d4e9f9c5f6b7d559ba32e1e867d69cfe3"

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
