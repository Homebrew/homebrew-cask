cask 'iexplorer' do
  version '4.3.2,163'
  sha256 '7a99708e63eb58357df10dea0cce6a8968e88e9babf1d13f37de84eeba8be90e'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
