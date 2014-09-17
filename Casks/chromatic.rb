class Chromatic < Cask
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/Chromatic.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/Chromatic'
  homepage 'https://mrgeckosmedia.com/applications/info/Chromatic'

  app 'Chromatic.app'
end
