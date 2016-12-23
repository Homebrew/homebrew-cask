cask 'aqua-data-studio' do
  version '17.0.10'
  sha256 'c56b75cee686684ac8272dd304833ed44821391c6925c667477d460ed09acfa4'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
