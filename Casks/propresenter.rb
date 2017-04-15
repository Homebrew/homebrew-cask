cask 'propresenter' do
  version '6.1.7_b16016'
  sha256 'b011a63932ab7a6d50f239b2b65a9e57c395f95b01d1d69057831358689b1d05'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '815df72d9d454f8dfcf581b84112a1971845537e7e1bf56dd3ee648c02cfdb42'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
