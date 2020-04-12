cask 'nautilus' do
  version '1.3.0'
  sha256 '93a5eb32c27d4ae2d01ee5140f66a2bfa5f7bba1113c0734e2997af8afe9acce'

  url "https://nautilusdev.com/release/Nautilus-#{version}.dmg"
  appcast 'https://github.com/oslabs-beta/nautilus/releases.atom'
  name 'Nautilus'
  homepage 'https://nautilusdev.com/'

  app 'Nautilus.app'

  zap trash: [
               '~/Library/Application Support/nautilus',
               '~/Library/Saved Application State/com.nautilus.app.savedState',
               '~/Library/Preferences/com.nautilus.app.plist',
             ]
end
