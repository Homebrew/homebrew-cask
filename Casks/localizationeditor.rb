cask 'localizationeditor' do
  version '2.5'
  sha256 '5f6b196e74e9040db506b90c6a72ce5bfea3a19d7e911377c7c4c5d0167305ba'

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  appcast 'https://github.com/igorkulman/iOSLocalizationEditor/releases.atom'
  name 'LocalizationEditor'
  homepage 'https://github.com/igorkulman/iOSLocalizationEditor/'

  depends_on macos: '>= :high_sierra'

  app 'LocalizationEditor.app'
end
