cask 'popchar' do
  version '8.3'
  sha256 '1e19134b1b5617e5f46f96846da5d460b41fd62e89014ea1819e8c4fbe9cb98d'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/popcharx/history.html'
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
