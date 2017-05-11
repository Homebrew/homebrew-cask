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
    version '102.2'
    sha256 '443fa9e3cf34008a45a4a7e23e79305ac10d490f0d914f510239ef5c7c616e15'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  appcast 'https://istumbler.net/feeds/appcast.rss',
          checkpoint: '233058c80ad41c0daec3e1fe923326209087fae045becfb86be74d969cbe6bf7'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  app 'iStumbler.app'
end
