cask 'quiterss' do
  version '0.18.12'
  sha256 'f01b838923544b3a43d798ec78e1168e6442ec2d9364f107837b51ce66189ac3'

  url "https://quiterss.org/files/#{version}/QuiteRSS-#{version}.dmg"
  appcast 'https://github.com/QuiteRSS/quiterss/releases.atom'
  name 'QuiteRSS'
  homepage 'https://quiterss.org/'

  app 'Quiterss.app'

  zap delete: [
                '~/.config/QuiteRss',
                '~/Library/Caches/QuiteRss',
                '~/Library/Application Support/QuiteRss',
                '~/Library/Preferences/org.quiterss.QuiteRSS.plist',
              ]
end
