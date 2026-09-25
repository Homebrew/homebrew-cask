cask "quiet" do
  arch arm: "arm64", intel: "x64"

  version "11.3.0"
  sha256 arm:   "f823415be63c1177fb8082402b233476fb436668210591a63813e5ec5b4444d3",
         intel: "0d079f7962f6a9a2940dbc17e7a279aa7cecbc3f20be81a7ad2e6c809af6c86a"

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
