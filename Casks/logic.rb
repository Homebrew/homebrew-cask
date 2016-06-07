cask 'logic' do
  version '1.2.9'
  sha256 '8c85ad2aa05b86974351b0b573f41f68c42bb1835d531c2a2e288df5a335fe55'

  url "http://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'
  license :commercial

  app 'Logic.app'
end
