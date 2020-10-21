cask "qtum" do
  version "0.20.1"
  sha256 "cf909f0292020fd140011e79f22894639e1bf013ed83021a55b9ba8324ddbc33"

  # github.com/qtumproject/qtum/ was verified as official when first introduced to the cask
  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version.major_minor_patch}/qtum-#{version}-osx-unsigned.dmg"
  appcast "https://github.com/qtumproject/qtum/releases.atom"
  name "Qtum"
  desc "Cryptocurrency wallet"
  homepage "https://qtum.org/"

  app "Qtum-Qt.app"
end
