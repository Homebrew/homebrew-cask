cask 'popchar' do
  version '8.5'
  sha256 '52982841c36e6c0e909f89de8a7e9a6527466aa2dfc466e60e628d8545591482'

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'https://www.ergonis.com/products/popcharx/history.html'
  name 'PopChar X'
  homepage 'https://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
