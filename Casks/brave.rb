cask 'brave' do
  version '0.10.0dev'
  sha256 'e4e7b87ea680ab71150a9644543aeac23ea98852f9d57c92f5f9af8c3af0360c'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'c40423ddeb785ec1ef53e7a7f0cb9eadd874e63d9a55b901c9e5a153fa58b76e'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
