cask 'popchar' do
  version '7.3.1'
  sha256 '1f7d06897b165613f564e34409ff42e20e383f831b45c86d6e4bd71bc1c1b670'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.gsub(%r{\.}, '')}-Install.dmg"
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'
  license :commercial

  app 'PopChar.app'
end
