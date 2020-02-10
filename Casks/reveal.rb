cask 'reveal' do
  version '24'
  sha256 'f208463dc399e2ff6b307f16d3d6d89757fc34272163b72f10b6c886602864a5'

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
