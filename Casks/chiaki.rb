cask 'chiaki' do
  version '1.1.1'
  sha256 '40436df719ffa22841185ed7caedf881a42956c1ec84bea5f582314131b0df9f'

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
