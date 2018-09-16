cask 'brave-dev' do
  version '0.53.2'
  sha256 'f4082d20352c120dbef1dc2234dc9a4707a9e14c30e94b01859bc0ec9023dbe0'

  url "https://brave-browser-downloads.s3.brave.com/latest/Brave-Browser-Dev.dmg"
  appcast 'https://github.com/brave/brave-core/releases.atom'
  name 'Brave Dev'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave-Browser-Dev.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
