cask 'reveal' do
  version '25'
  sha256 'b98e26a851ead6cd3c5449d891f0e93a2e2cc1c71ff4f54c05537d7e0ef2f3d7'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://updates.devmate.com/com.ittybittyapps.Reveal2.xml'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  auto_updates true
  depends_on macos: '>= :mojave'

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
