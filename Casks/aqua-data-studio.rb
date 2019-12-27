cask 'aqua-data-studio' do
  version '20.0.4'
  sha256 '7f10cd1a68bcf2c98ccb29c6e0646f55fc332cba37f57c92e061cad1bf1bef17'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'https://www.aquafold.com/aquadatastudio_downloads'
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
