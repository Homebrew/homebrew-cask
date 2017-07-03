cask 'propresenter' do
  version '6.2.3_b16029'
  sha256 'e674617802f95af5d92ac700c3997c4d95b30398215729cdfb134e188d3f3421'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: 'd072eac69d484da1355a1a9072240ee59c8dedfc83e974929d050c667097f5f0'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
