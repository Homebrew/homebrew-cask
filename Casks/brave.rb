cask 'brave' do
  version '0.20.42'
  sha256 '83b39314e9d44800ab710a1fa01dcf8d9c86eb8c7a762d10701b2c59c2ee98d1'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'bef6f120af4b21cfe76bfa91ac8fdc6a75b6f8074b78858d079505cee3ecbb72'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
