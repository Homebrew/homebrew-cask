cask "bitshares" do
  version "5.0.210216"
  sha256 "569fa44809f92f3b3e2809cb80906a24ebc6cdba5447a0f22136e97aab1ad1d4"

  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}-mac.zip",
      verified: "github.com/bitshares/bitshares-ui/"
  appcast "https://github.com/bitshares/bitshares-ui/releases.atom"
  name "BitShares"
  desc "GUI / Reference wallet for the BitShares blockchain"
  homepage "https://bitshares.org/"

  app "BitShares.app"
end
