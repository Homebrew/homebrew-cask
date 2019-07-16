cask 'iexplorer' do
  version '4.3.0,158'
  sha256 '19c6e08471ba557b5f252d6769f680a3aa0c2b7de4f1151a783a2f88137480e7'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
