cask 'scrutiny' do
  version '7.6.0'
  sha256 'd5a0cc77bb7868cec331cab5b724c3e64a144b4cfdd38c9124f508df9d70141a'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: '6c992c3bdeb3bc2091d6d19c937d6ef0a84b21e8856c12c8a6cafbcd5de85dfe'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'

  app "Scrutiny #{version.major}.app"

  zap delete: [
                "~/Library/Caches/com.peacockmedia.Scrutiny-#{version.major}",
                "~/Library/Cookies/com.peacockmedia.Scrutiny-#{version.major}.binarycookies",
              ],
      trash:  [
                "~/Library/Application Support/Scrutiny #{version.major}",
                "~/Library/Preferences/com.peacockmedia.Scrutiny-#{version.major}.plist",
              ]
end
