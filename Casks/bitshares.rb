cask "bitshares" do
  version "3.3.191120"
  sha256 "27553d1038f6c301b7bcdc4f8a644e871722024d24585c6b847c868962a967aa"

  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}-mac.zip",
      verified: "github.com/bitshares/bitshares-ui/"
  name "BitShares"
  desc "GUI / Reference wallet for the BitShares blockchain"
  homepage "https://bitshares.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "BitShares.app"
end
