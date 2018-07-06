cask 'aqua-data-studio' do
  version '19.0.0'
  sha256 '433eb4c0665d1638722628e33c6b80f52bc29e17ff4f11c745691df5b56158f9'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
