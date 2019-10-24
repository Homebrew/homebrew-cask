cask 'localizationeditor' do
  version '2.3'
  sha256 'a3b6914ec001effd1d74a8de28550dd475d3168f9487ef8d479503cedd60779c'

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  appcast 'https://github.com/igorkulman/iOSLocalizationEditor/releases.atom'
  name 'LocalizationEditor'
  homepage 'https://github.com/igorkulman/iOSLocalizationEditor/'

  app 'LocalizationEditor.app'
end
