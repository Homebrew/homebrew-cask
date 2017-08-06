cask 'propresenter' do
  version '6.2.6_b16042'
  sha256 '016fb476f7cd6a5bdc623df1e5529889a4292524bb5f349b087cb7ccccfeaef5'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '0b41476856b9ca6d25f0ffafdde524c17a68f8ec9f675908b57b238125c95345'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
