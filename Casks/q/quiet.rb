cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "11.3.1"
  sha256 arm:   "375816cc338df46aeb8c1a92c191726633fb1e3ea164b0bdde242f27c7704301",
         intel: "6dac63716a2a3ea6e6d218213c4c3cf1266324ea5a3b532f4da6f8d64321a43a"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}-#{arch}.dmg"
  name "Quiet"
  desc "Private, p2p alternative to Slack and Discord built on Tor & IPFS"
  homepage "https://tryquiet.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Quiet[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :ventura

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet*"
end
