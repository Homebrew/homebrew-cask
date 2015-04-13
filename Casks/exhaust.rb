cask :v1 => 'exhaust' do
  version :latest
  sha256 :no_check

  url 'http://download.mrgeckosmedia.com/Exhaust.zip'
  name 'Exhaust'
  appcast 'http://mrgeckosmedia.com/applications/appcast/Exhaust'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :oss

  app 'Exhaust/Exhaust.app'
end
