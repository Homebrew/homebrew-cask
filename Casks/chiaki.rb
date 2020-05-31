cask 'chiaki' do
  version '1.2.1'
  sha256 '8817d08633ee61f0ea2bc5283a035728c613fa665000bf0c097e31c19021e737'

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
