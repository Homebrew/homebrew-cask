cask "qtum" do
  version "0.20.1"
  sha256 "cf909f0292020fd140011e79f22894639e1bf013ed83021a55b9ba8324ddbc33"

  url "https://github.com/qtumproject/qtum/releases/download/mainnet-ignition-v#{version.major_minor_patch}/qtum-#{version}-osx-unsigned.dmg",
      verified: "github.com/qtumproject/qtum/"
  appcast "https://github.com/qtumproject/qtum/releases.atom"
  name "Qtum"
  desc "Cryptocurrency wallet"
  homepage "https://qtum.org/"

  app "Qtum-Qt.app"
end
