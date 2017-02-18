cask 'brave' do
  version '0.13.2dev'
  sha256 'c649a99ea24f54a539a73a0539cbc3e2b4a0e85d4facb754c42cf2499de64d29'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'edf0521552521c815bf3f53a5b6f6334fd9277b521fbc6bfebc0946a80fbfbad'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
