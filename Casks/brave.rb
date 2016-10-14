cask 'brave' do
  version '0.12.4dev'
  sha256 'e6cf20329fbbacaf96f433a47d89302b7422f54959df3952a0cc350111f55040'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'adde91f3d0bc8c80019360e98b0fe05a1b9ddd6b597134217ee67924fecf5373'
  name 'Brave'
  homepage 'https://brave.com'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
