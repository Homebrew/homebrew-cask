cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "11.0.1"
  sha256 arm:   "f6e80723748d0fa6fe263284393a7c604d39cb6b6e08cee88a7f6cb305d91670",
         intel: "ffc5af2b236b74ff387414de9111bdbd0a1b74b090e297a833ed777a19f4c1de"

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
