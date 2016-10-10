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
    version '101'
    sha256 'c59192f9a48ba0166f4c21e9d770214d051d67b4a4130fc4195154dea4943985'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  appcast 'https://istumbler.net/feeds/appcast.rss',
          checkpoint: '34a8b8cf15c866c8e7e3484b5eb894f178a68fb1dde20b47b6ce6d841f976403'
  name 'iStumbler'
  homepage 'https://istumbler.net/'

  app 'iStumbler.app'
end
