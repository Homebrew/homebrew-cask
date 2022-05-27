cask "sparrow" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.6.5"

  if Hardware::CPU.intel?
    sha256 "baa086bc20f200a3a38ee8f35053c4b064b43d1db5f8240ea5e700256eb56e03"
  else
    sha256 "c43606663bd176c8a335fb9121b5e706b396d604149c6c4f732cfbf00d1d44c4"
  end

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
