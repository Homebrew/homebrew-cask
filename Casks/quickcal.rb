cask 'quickcal' do
  version :latest
  sha256 :no_check

  url 'http://quickcalapp.com/app/quickcal-latest.zip'
  appcast 'http://quickcalapp.com/app/appcast.xml',
          :checkpoint => 'c91adfc59ed46e93e1383f0b2de7638f6e5625076f9fcacc1b36b480bbac8fc4'
  name 'QuickCal'
  homepage 'http://quickcalapp.com/'
  license :commercial

  app 'QuickCal.app'
end
