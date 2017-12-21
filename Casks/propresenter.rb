cask 'propresenter' do
  version '6.2.10_b16063'
  sha256 'c63fcd8023969f999a3fc6b9a28a9be56fe84cea0181ea1845c0035e1914b804'

  url "https://www.renewedvision.com/downloads/ProPresenter#{version.major}_#{version}.dmg"
  appcast "https://www.renewedvision.com/update/ProPresenter#{version.major}.php",
          checkpoint: '5fcec2a859b9658707c93f10bcbe7e790d9ec774febfe383f0bfe6ffbcb30b5a'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app "ProPresenter #{version.major}.app"
end
