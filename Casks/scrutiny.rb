cask 'scrutiny' do
  version '8.0.8'
  sha256 '7b1ddcf8e7f51982700dc586426bd55bc6de82af44abe880cd62af17c8e0f453'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: '5f8b63fa6c959e910b5b5a1ef69f4c6bd8153ac0556fb434fdbb3ddb59f9daf7'
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
