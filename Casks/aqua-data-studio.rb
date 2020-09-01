cask "aqua-data-studio" do
  version "20.6.1-1"
  sha256 "0a0273b329400563b7e0c8ef244bc0f08faf26fc6ece3063ff065bb642397a60"

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast "https://www.aquafold.com/aquadatastudio_downloads"
  name "Aquafold Aqua Data Studio"
  homepage "https://www.aquafold.com/aquadatastudio"

  app "Aqua Data Studio.app"
end
