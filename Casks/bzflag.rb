cask :v1 => 'bzflag' do
  version '2.4.2'
  sha256 '4ce7f007cb7c78a5243ced84d310c37637a2aa8fe9569231edd2dbc45286e293'

  url "http://downloads.sourceforge.net/project/bzflag/bzflag%20Mac%20OS%20X/#{version}/BZFlag-#{version}.zip"
  homepage 'http://bzflag.org/'
  license :gpl

  app "BZFlag-#{version}.app"
end
