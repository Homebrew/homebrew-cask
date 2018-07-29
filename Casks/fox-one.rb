cask 'fox-one' do
  version '1.7.6'
  sha256 'ca18958ff70cef3561de736fe2eb7384eb11c03da0c7785bce07d991f6910f41'

  url "https://www.fox.one/build/Fox-#{version}.dmg"
  name 'Fox'
  homepage 'https://www.fox.one/'

  app 'Fox.app'
end
