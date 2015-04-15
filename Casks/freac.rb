cask :v1 => 'freac' do
  version '20141005'
  sha256 'c2f13b895f980183ba7c2c4a0cbc9d3985002caf44059b2dfb9bc4d717205d97'

  url "https://downloads.sourceforge.net/bonkenc/freac-#{version}-macosx.dmg"
  homepage 'http://www.freac.org'
  license :gpl

  app 'freac.app'
end
