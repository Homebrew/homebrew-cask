cask 'scrutiny' do
  version '7.5.9'
  sha256 '91ff898fb8bfc6e48b988ae72ec8d3acb1f4ce6a3706ef7eadc8171a81913b29'

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  appcast 'http://peacockmedia.software/mac/scrutiny/version_history.html',
          checkpoint: 'd5b6d9de3dc79c16e40ee6485319bcb6b7bb3c338b31125622cbd158f511f77b'
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
