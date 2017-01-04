cask 'propresenter' do
  version '6.1.3_b15163'
  sha256 '0495619cb87574143d63fc46629ca75468643069fc1135278c5e92ad817b88fc'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: 'ab274baef50eafba2619b9303a8edf315b6af801e6501b2b28c3190cc5a75592'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
