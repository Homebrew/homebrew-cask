cask 'macpass' do
  version '0.7.9'
  sha256 'cb4445fad7f2e64726cbaa320b228dadb3b48afe15f138ae90600e912093f12c'

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
