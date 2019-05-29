cask 'lyn' do
  version '1.11'
  sha256 'ece23dfa70b224dc7351aa362b22c47ea7649ef3ddd19154463fb11d8c684431'

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'https://www.lynapp.com/lyn/update.xml'
  name 'Lyn'
  homepage 'https://www.lynapp.com/'

  app 'Lyn.app'

  zap trash: [
               '~/Library/Application Support/Lyn',
               '~/Library/Caches/com.lynapp.lyn',
               '~/Library/Preferences/com.lynapp.lyn.plist',
             ]
end
