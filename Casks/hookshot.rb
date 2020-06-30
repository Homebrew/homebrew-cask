cask 'hookshot' do
  version '1.6.1'
  sha256 '8ef4418681e55a4889a7dc06182cc019d2211886209f6b5748a4c1bc901d69d4'

  url "https://hookshot.app/downloads/Hookshot#{version}.dmg"
  appcast 'https://hookshot.app/downloads/updates.xml'
  name 'Hookshot'
  homepage 'https://hookshot.app/'

  depends_on macos: '>= :sierra'

  app 'Hookshot.app'

  zap trash: [
               '~/Library/Application Support/Hookshot',
               '~/Library/Caches/com.knollsoft.Hookshot',
               '~/Library/Cookies/com.knollsoft.Hookshot.binarycookies',
               '/Library/Preferences/com.knollsoft.Hookshot.plist',
             ]
end
