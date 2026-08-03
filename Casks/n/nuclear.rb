cask "nuclear" do
  arch arm: "aarch64", intel: "x64"

  version "1.45.0"
  sha256 arm:   "f5888d692d4e6f4ee4fe9c841192d220909731bda3160a699cf7282198aaf166",
         intel: "ed29047846da5718e9d77e24d061d15b0e05d862303fef2190a6d2ae06aefcaf"

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
