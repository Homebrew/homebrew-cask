cask 'brave' do
  version '0.19.80'
  sha256 '4c20399d7e23c6c7df1c41e6ded4c3f59fb98acc9b1de41ab21562df6c987d63'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '738e3b5ededb7bb06e51a619155c8fecd24bd7e5c251af846b7959533ca00d90'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap delete: '~/Library/Saved Application State/com.electron.brave.savedState',
      trash:  [
                '~/Library/Application Support/brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
