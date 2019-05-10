cask 'reveal' do
  version '22'
  sha256 'eef0d41435847fdec002ff005e9cde0fede89b7a0cd0ab0e3ac14f3a292e81f6'

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
