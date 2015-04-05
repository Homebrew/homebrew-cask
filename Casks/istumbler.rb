cask :v1 => 'istumbler' do

  if MacOS.release <= :mountain_lion
    version '99'
    sha256 'ac30e44fe86132c93a5b33699de00e86628e2f51a42015d2225b91521a198b63'
    url "http://istumbler.net/archive/release#{version}/downloads/iStumbler-#{version}.zip"
  elsif MacOS.release < :yosemite
    # Last freeware version. v101+ do now cost $25
    version '100'
    sha256 '71f6a6b0e255a853664ed4900835a42f2d23dcb05de35acfb3ac2ec1c5fb2edc'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  else
    version '101'
    sha256 'cc40826c8f674c0be0b13921b67a005dc1fcda6df1c5a0c10d09e02d59eaea52'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  name 'iStumbler'
  homepage 'http://istumbler.net/'
  license :commercial

  app 'iStumbler.app'
end
