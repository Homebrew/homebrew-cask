cask 'macpass' do
  version '0.7.7'
  sha256 '453a877bd9e9c4d440f06195763c79cfa37980b650929af9fed661e6a801e4d5'

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
