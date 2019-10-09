cask 'iexplorer' do
  version '4.3.6,168'
  sha256 'df15787591d3c195d23da5daf76a8992b06d6914793279d479022372251699f8'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
