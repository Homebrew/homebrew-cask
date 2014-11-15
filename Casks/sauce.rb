cask :v1 => 'sauce' do
  version :latest
  sha256 :no_check

  url 'https://saucelabs.com/downloads/Sauce-for-Mac.dmg'
  homepage 'https://saucelabs.com/mac'
  license :unknown

  app 'Sauce.app'
end
