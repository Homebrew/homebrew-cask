cask 'iexplorer' do
  version '4.3.1,161'
  sha256 'e336f66023a1fd2029d75c569057118243dada0575ecda82fe4b8d2c0f078b9a'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
