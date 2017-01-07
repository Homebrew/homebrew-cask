cask 'propresenter' do
  version '6.1.4_b15176'
  sha256 '6fc35e92710de20417cc82e50dcc3c08c397625c9bd80592ee893882a7c9fa92'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '68f9ca6d39542c61c4ae2e269a348bf30101effa1dcb197e147e4f8a40474273'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
