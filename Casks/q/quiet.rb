cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "7.3.3"
  sha256 arm:   "d5deaea762f421ecc1f6cc1c008049a4dc578bac90653be6ca20aa7866679111",
         intel: "95719ad75e66f929d54da5a924f12a63decb3687e3852b8a218debafb17d4d3c"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}-#{arch}.dmg",
      verified: "github.com/TryQuiet/quiet/"
  name "Quiet"
  desc "Private, p2p alternative to Slack and Discord built on Tor & IPFS"
  homepage "https://tryquiet.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Quiet[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on :macos

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet*"
end
