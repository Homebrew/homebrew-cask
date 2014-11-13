cask :v1 => 'ideskcal' do
  version :latest
  sha256 :no_check

  url 'https://www.hashbangind.com/files/iDeskCal-Latest.zip'
  appcast 'https://hashbangind.com/appcasts/iDeskCal-profileInfo.php'
  homepage 'http://www.hashbangind.com'
  license :unknown

  app 'iDeskCal.app'
end
