cask 'sauce' do
  version :latest
  sha256 :no_check

  url 'https://saucelabs.com/downloads/Sauce-for-Mac.dmg'
  name 'Sauce'
  homepage 'https://saucelabs.com/mac'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sauce.app'
end
