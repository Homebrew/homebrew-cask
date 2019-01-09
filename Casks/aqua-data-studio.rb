cask 'aqua-data-studio' do
  version '19.0.2'
  sha256 '56461ec9f63746ce84176cc0c7a566e217e9e16d84fe2ee8f4c9d600d25bcd91'

  url "http://downloads.aquafold.com/v#{version.major_minor}.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aquafold Aqua Data Studio'
  homepage 'https://www.aquafold.com/aquadatastudio'

  app 'Aqua Data Studio.app'
end
