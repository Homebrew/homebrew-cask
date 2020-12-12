cask "invesalius" do
  version "3.1.1"
  sha256 "678b2f028c66b805a9865524eba49852f0c7f7e7d231a965ffa78b0ced47b629"

  # github.com/invesalius/invesalius3/ was verified as official when first introduced to the cask
  url "https://github.com/invesalius/invesalius3/releases/download/v#{version}/InVesalius-#{version}.dmg"
  appcast "https://github.com/invesalius/invesalius3/releases.atom"
  name "InVesalius"
  homepage "https://www.cti.gov.br/en/invesalius"

  app "InVesalius.app"
end
