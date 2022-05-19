cask "sparrow" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.6.4"

  if Hardware::CPU.intel?
    sha256 "6e8cec928e87b7033ccdee8099f24258fb723daf172569002270d9d8559000af"
  else
    sha256 "c43606663bd176c8a335fb9121b5e706b396d604149c6c4f732cfbf00d1d44c4"
  end

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{Hardware::CPU.arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
