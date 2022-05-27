cask "sparrow" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.6.5"

  if Hardware::CPU.intel?
    sha256 "3fd0f2563365da4b573c8aad9a8170451b08c116f84dbb156a02c92344acd411"
  else
    sha256 "baa086bc20f200a3a38ee8f35053c4b064b43d1db5f8240ea5e700256eb56e03"
  end

  url "https://github.com/sparrowwallet/sparrow/releases/download/#{version}/Sparrow-#{version}-#{arch}.dmg",
      verified: "github.com/sparrowwallet/sparrow/"
  name "Sparrow Bitcoin Wallet"
  desc "Bitcoin wallet application"
  homepage "https://sparrowwallet.com/"

  app "Sparrow.app"

  zap trash: "~/.sparrow"
end
