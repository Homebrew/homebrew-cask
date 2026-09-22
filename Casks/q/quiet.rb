cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "11.1.0"
  sha256 arm:   "38e779c12f87fc30b2293d4601ea9ae7c942ac5b209df5841c545a691087d4d7",
         intel: "97633a169035deb865e3def08bfbc184628f3ac109380e4b6ebca0c77c86500a"

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
