cask 'brave' do
  version '0.19.53'
  sha256 '55a15fa91920a3fa59a17103ce572f8bd9151e55f0c5322e36a910914450e399'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '261ad339c2cd6ba021490de432d7b11148eed0324122e10afac27eab76d159de'
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
