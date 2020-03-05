cask 'aqua-data-studio' do
  version '20.5.0-3'
  sha256 'b0053af263a1b648764c891ce14704418ba5ec03b896d5566ccf61c5f3c04b12'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'https://www.aquafold.com/aquadatastudio_downloads'
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
