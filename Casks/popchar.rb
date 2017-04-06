cask 'popchar' do
  version '7.7'
  sha256 'b0428f4ffa6630bdc3f3a54ea3c872934caf3631b99c47d92264382d82ccafd2'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/popcharx/history.html',
          checkpoint: '84690fe42a9e8ef619366b9a0dad6b774f43c76171b7d88028aed91670f45bce'
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
