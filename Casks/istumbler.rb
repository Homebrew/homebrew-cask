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
    version '103.2'
    sha256 '1cebe0cc4b5bbfb254a7960fae743cd3af41e8141e49604a26ccda9b76f08b8a'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  appcast 'https://istumbler.net/feeds/appcast.rss',
          checkpoint: 'b31dbc6ca196c949b714b178b7a8672403c2524fbe2f79558570e5ed5529607f'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  app 'iStumbler.app'
end
