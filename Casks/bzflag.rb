cask 'bzflag' do
  version '2.4.2'
  sha256 '4ce7f007cb7c78a5243ced84d310c37637a2aa8fe9569231edd2dbc45286e293'

  # sourceforge.net/sourceforge/bzflag was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/bzflag/BZFlag-#{version}.zip"
  name 'BZFlag'
  homepage 'http://bzflag.org/'
  license :gpl

  app "BZFlag-#{version}.app"
end
