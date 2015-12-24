cask 'aqua-data-studio' do
  version '16.0.8'
  sha256 'cc30e96853ce0231bc1b1d917d6930ab578441371eb64bd56140a501dfb1f9b2'

  url "http://www.aquafold.com/download/v16.0.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'
  license :commercial

  app 'Aqua Data Studio.app'
end
