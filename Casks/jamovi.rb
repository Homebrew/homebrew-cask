cask 'jamovi' do
  version '1.2.16.0'
  sha256 'e0c4e1ae1dcea84062952d00d510e68866330ea60834be3f62cfc873852566fb'

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.jamovi.org/download.html&splitter_1=macos.dmg&index_1=0&splitter_2=download-button&index_2=-1'
  name 'jamovi'
  homepage 'https://www.jamovi.org/'

  auto_updates true

  app 'jamovi.app'

  zap trash: [
               '~/Library/Application Support/jamovi/',
               '~/Library/Logs/jamovi',
               '~/Library/Preferences/org.jamovi.jamovi.plist',
               '~/Library/Saved Application State/org.jamovi.jamovi.savedState/',
             ]
end
