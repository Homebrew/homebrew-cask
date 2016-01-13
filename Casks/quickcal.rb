cask 'quickcal' do
  version :latest
  sha256 :no_check

  url 'http://quickcalapp.com/app/quickcal-latest.zip'
  appcast 'http://quickcalapp.com/app/appcast.xml',
          :checkpoint => '9b5e09452c5e03ba8656fa75690afe10d29e47e93a006bc805df6f1baeb5909e'
  name 'QuickCal'
  homepage 'http://quickcalapp.com/'
  license :commercial

  app 'QuickCal.app'
end
