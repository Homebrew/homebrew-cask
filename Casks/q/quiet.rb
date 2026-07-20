cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "8.0.0"
  sha256 arm:   "e5b5b28db716daf2687bdb08c6c8338b01fcff8706d2e0432dd0d80e4b858201",
         intel: "29000ddd33786a0b1007b9f6afe8d6e31b6fe1dabd78bd45afc04b4a5edfd4f5"

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
