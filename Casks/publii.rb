cask 'publii' do
  version '0.35.3'
  sha256 '4cd6883223e9fe6f4aada12dded4657f408670c70ff51c1e3fe3cafc4e5a1f3d'

  url "https://cdn.getpublii.com/Publii__#{version}.dmg"
  appcast 'https://getpublii.com/download/'
  name 'Publii'
  homepage 'https://getpublii.com/'

  app 'Publii.app'

  zap trash: [
               '~/Documents/Publii',
               '~/Library/Application Support/Publii',
               '~/Library/Logs/Publii',
               '~/Library/Preferences/com.tidycustoms.publii.plist',
             ]
end
