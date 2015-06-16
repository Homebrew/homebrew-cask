cask :v1 => 'quickcal' do
  version :latest
  sha256 :no_check

  url 'http://quickcalapp.com/app/quickcal-latest.zip'
  name 'QuickCal'
  homepage 'http://quickcalapp.com/'
  license :commercial

  app 'QuickCal.app'
end
