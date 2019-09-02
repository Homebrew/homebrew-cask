cask 'reveal' do
  version '24'
  sha256 '4a3e90450c0b71b26aef010eabc98a06ca39f73e6e7195bb70f4a869a1e7d327'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://updates.devmate.com/com.ittybittyapps.Reveal2.xml'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Reveal.app'

  zap trash: [
               '~/Library/Application Support/Reveal',
               '~/Library/Caches/com.ittybittyapps.Reveal2',
               '~/Library/Logs/com.ittybittyapps.Reveal2',
               '~/Library/Preferences/com.ittybittyapps.Reveal2.plist',
               '~/Library/Saved Application State/com.ittybittyapps.Reveal2.savedState',
               '/Users/Shared/Reveal',
             ]
end
