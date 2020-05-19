cask 'chiaki' do
  version '1.2.0'
  sha256 '1993b244376d891881373d90011110741b56bdeab108385bd100d38005774b48'

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
