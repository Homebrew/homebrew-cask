cask 'brave' do
  version '0.11.3dev'
  sha256 '3fbae05fc6d285a169f995e2c042fd1362e41421387f5fe1894ab1ebbd707767'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'f62251728103720cfdc543cc171816a64ac9c802657ea5c7931478104f543a84'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
