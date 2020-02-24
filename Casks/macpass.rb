cask 'macpass' do
  version '0.7.11'
  sha256 '1ad6eda44db56efe2d83dc2eee658eead6a34cc885cd0d92c457abe1c46d9f23'

  # github.com/MacPass/MacPass was verified as official when first introduced to the cask
  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/MacPass/MacPass/releases.atom'
  name 'MacPass'
  homepage 'https://macpass.github.io/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'MacPass.app'

  zap delete: [
                '~/Library/Application Support/MacPass',
                '~/Library/Caches/com.hicknhacksoftware.MacPass',
                '~/Library/Cookies/com.hicknhacksoftware.MacPass.binarycookies',
                '~/Library/Preferences/com.hicknhacksoftware.MacPass.plist',
                '~/Library/Saved Application State/com.hicknhacksoftware.MacPass.savedState',
              ]
end
