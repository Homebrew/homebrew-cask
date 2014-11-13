cask :v1 => 'stellarium' do
  version '0.13.0'
  sha256 '0f626233007449b8fb2524be022ae2c70667294da8494064b459094b3bdd2afb'

  url "https://downloads.sourceforge.net/sourceforge/stellarium/Stellarium-#{version}.dmg"
  homepage 'http://stellarium.org'
  license :oss

  app 'Stellarium.app'
end
