cask 'propresenter' do
  version '6.2.1_b16020'
  sha256 '2be4c6a776ff9b12e626374ccaeabde139709c130cbfa19de4ec67bd942f1a2d'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: 'cf0ea3d657a0eaa3a688eede5b8caf0a2e151bf731c6ff724bf9d453445e9ad0'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
