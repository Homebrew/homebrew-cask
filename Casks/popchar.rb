cask 'popchar' do
  version '7.5'
  sha256 'f991f2be60e1409209cc1921c1a2c2a7f2e6281a7275e52c6e1bbb8597a5c83a'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg"
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
