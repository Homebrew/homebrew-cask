cask 'popchar' do
  version '8.7'
  sha256 '5d21f19329b98cd2faa4e956344a750da2bcff219754c06be890d0caf9025a37'

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://update.ergonis.com/vck/popcharx.xml'
  name 'PopChar X'
  homepage 'https://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
