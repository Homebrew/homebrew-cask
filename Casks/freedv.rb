cask :v1 => 'freedv' do
  version '0.96.6'
  sha256 'e8c42dbb7fc5b8dd88020aa000149185adc5f9583094617966008e5b39d54970'

  url "http://files.freedv.org/OSX/FreeDV-#{version}.dmg"
  homepage 'http://freedv.org/tiki-index.php'
  license :unknown

  app 'FreeDV.app'
end
