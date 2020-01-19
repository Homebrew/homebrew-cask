cask 'localizationeditor' do
  version '2.4'
  sha256 '5d24874c0ac3a9dacf2011e4ae4d3938422f3d601ed46e42bb2aeda8779d1193'

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  appcast 'https://github.com/igorkulman/iOSLocalizationEditor/releases.atom'
  name 'LocalizationEditor'
  homepage 'https://github.com/igorkulman/iOSLocalizationEditor/'

  depends_on macos: '>= :high_sierra'

  app 'LocalizationEditor.app'
end
