cask 'quickcal' do
  version '3.1.5'
  sha256 '00566df05bc81755a7f8e3586d06a348fd4b3ef83a1deef5a64c7d6542b599b1'

  url "http://quickcalapp.com/app/quickcal-#{version}.zip"
  appcast 'http://quickcalapp.com/app/appcast.xml',
          checkpoint: 'c91adfc59ed46e93e1383f0b2de7638f6e5625076f9fcacc1b36b480bbac8fc4'
  name 'QuickCal'
  homepage 'http://quickcalapp.com/'

  app 'QuickCal.app'
end
