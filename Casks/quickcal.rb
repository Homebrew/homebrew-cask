cask :v1 => 'quickcal' do
  version :latest
  sha256 :no_check

  url 'http://quickcalapp.com/app/quickcal-latest.zip'
  appcast 'http://quickcalapp.com/app/appcast.xml',
          :sha256 => '7524d0f790b23f051cb62bb9cef21e32acb1d85bd2f3195d30997e516edf7768'
  name 'QuickCal'
  homepage 'http://quickcalapp.com/'
  license :commercial

  app 'QuickCal.app'
end
