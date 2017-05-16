cask 'propresenter' do
  version '6.2_b16019'
  sha256 'd53e10333be04bacde94b6c50d0bfd20376fa173ac2ea006499b10bcae0adea3'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: 'f5c03888077a21b8b6c938d6d8c2eba181e90c6b56490e92685bbc6709519123'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
