cask "aqua-data-studio" do
  version "20.6.0-4"
  sha256 "53e70f183e924514ac27ab64f2c7508de1e510cdb74c1a13cbdc147f131bd535"

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast "https://www.aquafold.com/aquadatastudio_downloads"
  name "Aquafold Aqua Data Studio"
  homepage "https://www.aquafold.com/aquadatastudio"

  app "Aqua Data Studio.app"
end
