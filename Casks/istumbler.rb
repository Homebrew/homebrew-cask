cask :v1 => 'istumbler' do
  if MacOS.version < :mavericks
    version '99'
    sha256 'ac30e44fe86132c93a5b33699de00e86628e2f51a42015d2225b91521a198b63'
    url "http://istumbler.net/archive/release#{version}/downloads/iStumbler-#{version}.zip"
  else
    version '100'
    sha256 '71f6a6b0e255a853664ed4900835a42f2d23dcb05de35acfb3ac2ec1c5fb2edc'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  homepage 'http://istumbler.net/'
  license :unknown

  app 'iStumbler.app'
end
