cask 'iexplorer' do
  version '4.2.10,153'
  sha256 '5d83237a0eeb81b0733e642c01863d051f19fa07741e7af26cd601afccc907db'

  url "https://assets.macroplant.com/download/#{version.after_comma}/iExplorer-#{version.before_comma}.dmg"
  appcast "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  app 'iExplorer.app'
end
