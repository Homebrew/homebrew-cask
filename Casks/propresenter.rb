cask 'propresenter' do
  version '6.1.6_b16010'
  sha256 'e152be6197344962ce92242064d3f98e81a8d964e8dae5f9938131fafb824398'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: 'dcf7f904b59b81c63d5de618e34d4ab6125702a9088df9800f330b5770d3b090'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
