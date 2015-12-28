cask 'exhaust' do
  version :latest
  sha256 :no_check

  url 'https://download.mrgeckosmedia.com/Exhaust.zip'
  name 'Exhaust'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Exhaust',
          :sha256 => 'ad7db13ba9c8e73c5c774fbe91dddc1be9f7c02886c52e62e2d2d2c20fa4b1f8'
  homepage 'https://mrgeckosmedia.com/applications/info/Exhaust'
  license :oss

  app 'Exhaust/Exhaust.app'
end
