cask 'chiaki' do
  version '1.1.2'
  sha256 '9c02049614a0902c022609fdfe6234f76ee1e2bc2166506e34c15790bd84b326'

  url "https://github.com/thestr4ng3r/chiaki/releases/download/v#{version}/Chiaki-v#{version}-macOS-x86_64.dmg"
  appcast 'https://github.com/thestr4ng3r/chiaki/releases.atom'
  name 'Chiaki'
  homepage 'https://github.com/thestr4ng3r/chiaki'

  app 'Chiaki.app'

  zap trash: [
               '~/Library/Application Support/Chiaki',
               '~/Library/Preferences/com.chiaki.Chiaki.plist',
             ]
end
