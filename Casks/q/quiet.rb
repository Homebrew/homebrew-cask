cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "9.0.2"
  sha256 arm:   "1b81e3dd84ec557e50df1e119e95c8e853e8be6f5f297adf694b19279104525f",
         intel: "7789337888a72fd0776ca9a0a920ea21b63276a9b25ce2c893b09361c67d25a8"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}-#{arch}.dmg"
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
