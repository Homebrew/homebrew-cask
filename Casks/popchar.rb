cask 'popchar' do
  version '8.8'
  sha256 '298df60d208c635b1573218ad3681114a9d8656dd562929860989f7cb43a5c1a'

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/popcharx.xml'
  name 'PopChar X'
  homepage 'https://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
