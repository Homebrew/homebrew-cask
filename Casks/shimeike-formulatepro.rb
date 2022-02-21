cask "shimeike-formulatepro" do
  version "0.0.6"
  sha256 "9a5c37bad02a9dea7448e4ebe6fc6b0887efa05b0530603b9be1e5b0b3db2542"

  url "https://github.com/shimeike/formulatepro/releases/download/v#{version}a/FormulatePro-#{version}.dmg"
  name "FormulatePro"
  desc "Overlays text and graphics on PDF documents"
  homepage "https://github.com/shimeike/formulatepro/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)[a-z]?$/)
  end

  app "FormulatePro.app"
end
