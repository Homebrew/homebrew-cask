class Exhaust < Cask
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/Exhaust.zip'
  appcast 'http://mrgeckosmedia.com/applications/appcast/Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :unknown

  app 'Exhaust/Exhaust.app'
end
