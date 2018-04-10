cask 'propresenter' do
  version '6.3.3_b16143'
  sha256 'ddfad84809de7d8c84bd6f0ab54cc2f84a3da5ecec0a9aec9d30058d48289cd7'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '0ad833585afafd37ee8de984a24a04e660c84df7da5d38e84a2f0186132d71e6'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
