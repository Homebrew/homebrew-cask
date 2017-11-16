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
    version '103.1'
    sha256 'd7cdc9d777b6b6577ed91c16a9b047221e32486c4c4fbb72ecf617e087ad3283'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  appcast 'https://istumbler.net/feeds/appcast.rss',
          checkpoint: '7230af845d185f077d820513c534ad88aa336172e189daa69d64166152dcae2a'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  app 'iStumbler.app'
end
