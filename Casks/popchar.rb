cask 'popchar' do
  version '8.6'
  sha256 '2ae832beb44dada953d8d03529aed1fc6edeff488054a4d20b737c713b53b76d'

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://www.ergonis.com/products/popcharx/history.html'
  name 'PopChar X'
  homepage 'https://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
