cask 'brave' do
  version '0.12.9dev'
  sha256 '734f16cf4910fc608f1c7719942b93ec6a7055b64763cfdcfca21b26a68c0073'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'cb3e6ed6748b65fca45a89c0e6ac48979200e8c53da3bc95abbc57149d6bacb3'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
