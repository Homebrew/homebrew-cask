cask 'istumbler' do
  if MacOS.version <= :mountain_lion
    version '99'
    sha256 'ac30e44fe86132c93a5b33699de00e86628e2f51a42015d2225b91521a198b63'
    url "https://istumbler.net/archive/release#{version}/downloads/iStumbler-#{version}.zip"
  elsif MacOS.version == :mavericks
    version '100'
    sha256 '71f6a6b0e255a853664ed4900835a42f2d23dcb05de35acfb3ac2ec1c5fb2edc'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  else
    version '103.36'
    sha256 '347d6a871cd995a394c4934d05fdf2ed802b28caf7b77ad1f229ac1a4e8cf893'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  appcast 'https://istumbler.net/feeds/appcast.rss'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  auto_updates true

  app 'iStumbler.app'
end
