cask 'iexplorer' do
  version '4.3.8,172'
  sha256 '919f12b8df70f1d64e4299402bd1881ac3a7b4b87e5494f16504b26d98931a65'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
