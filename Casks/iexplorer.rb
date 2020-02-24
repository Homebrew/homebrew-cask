cask 'iexplorer' do
  version '4.3.7,169'
  sha256 '82eeb70aac3dcd9f2d647cf83c91937a1dd52c2b304d6afd4fc83a577e48f4b0'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
