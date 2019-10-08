cask 'iexplorer' do
  version '4.3.4,166'
  sha256 '1f55c4543740c36c682762f682fe6501505fa7dbf9c8f08523ff2e9ae7670c35'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
