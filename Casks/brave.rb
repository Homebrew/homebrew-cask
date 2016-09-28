cask 'brave' do
  version '0.12.1dev'
  sha256 '4c4375d14eea13b30b702d04dc360156dae8268ada2f84925e9771e080188262'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2e2376aa641001782bef7d510f85eed0930468f46311d0a55329a224a145635d'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
