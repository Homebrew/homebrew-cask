cask 'lyn' do
  version '1.12'
  sha256 '28ea512090db59bf5b5e1d876eeafa339933b50c81fecdd6ef367114e67ab549'

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
