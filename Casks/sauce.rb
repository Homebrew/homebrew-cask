cask 'sauce' do
  version :latest
  sha256 :no_check

  url 'https://saucelabs.com/downloads/Sauce-for-Mac.dmg'
  name 'Sauce'
  homepage 'https://saucelabs.com/mac'

  app 'Sauce.app'
end
