cask 'reveal' do
  version '23'
  sha256 '6443020e67287d9baa1544214804ba15784f883c3674a26577a4bfda8d867a5d'

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
