cask 'scrutiny' do
  version '8.0.14'
  sha256 '7ab87bd1cdd381ee07b767445a7bb5b15dce2033a8d4732dd68e8f14d6e82e5c'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: 'fff34350662ea126c4da75e6657a7697d4d9d4e57211a782e33725e9f1160585'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap trash: [
               "~/Library/Application Support/Scrutiny #{version.major}",
               "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
               "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
               "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
             ]
end
