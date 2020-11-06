cask "pyzo" do
  version "4.11.0"
  sha256 "b9873186b98aa573c74611bb4b56410ee936a29eb762ef45c5c6a7ea2b726f52"

  # github.com/pyzo/pyzo/ was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos.dmg"
  appcast "https://github.com/pyzo/pyzo/releases.atom"
  name "Pyzo"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
