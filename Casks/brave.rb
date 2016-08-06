cask 'brave' do
  version '0.11.2dev'
  sha256 '9fd3e12e19cb21081bc7f84eec604198f88b20d44a095d827cb82b3d117e9f89'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '2fcc817125d5abe71717796768fefd928957f0448823cadb45bdbeb34c88cbbf'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
