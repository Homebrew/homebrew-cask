cask 'macpass' do
  version '0.7.10'
  sha256 '3c1b18b58c3a9f9365e03a3faff9b4b2d35a3198205a495fba694d01104ac96c'

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
