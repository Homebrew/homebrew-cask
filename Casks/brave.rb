cask 'brave' do
  version '0.19.122'
  sha256 'bb455f8a8e043fa92bfd11dc9e9d1b7212a77b333a16e749fe6ed74174086d4b'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'd0ad4cc4ecdc7bf4c598b3bdd344ff8845e2a7255886cfdacc189e599e4725fa'
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
