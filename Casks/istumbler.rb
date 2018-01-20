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
    version '103.4'
    sha256 'cbff32e79e2d98a860c9ca04e67b6918987edb5063693f47c4071887aed87658'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  appcast 'https://istumbler.net/feeds/appcast.rss',
          checkpoint: 'efe23acb95dcf06592569075d061069e7d755a580234def1d34d7422de9a219d'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  app 'iStumbler.app'
end
