cask 'chiaki' do
  version '1.0.4'
  sha256 '7c269fbf3be637ba7a8eb799f316b36d7c341dc882c8ce08425d89ecad19ff1c'

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
