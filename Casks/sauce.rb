cask :v1 => 'sauce' do
  version :latest
  sha256 :no_check

  url 'https://saucelabs.com/downloads/Sauce-for-Mac.dmg'
  homepage 'https://saucelabs.com/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sauce.app'
end
