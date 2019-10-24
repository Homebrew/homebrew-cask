cask 'localizationeditor' do
  version '2.3'
  sha256 :no_check

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  appcast 'https://github.com/igorkulman/iOSLocalizationEditor/releases.atom'
  name 'LocalizationEditor'
  homepage 'https://github.com/igorkulman/iOSLocalizationEditor/'

  app 'LocalizationEditor.app'
end
