cask 'clyang-welly' do
  version '3.1.0'
  sha256 '3cf2affca536c788e5f96e67cd4dab3fdeb20e115f1fa242285ed9a8ab1f316e'

  url "https://github.com/clyang/welly/releases/download/#{version}/Welly.v#{version}.zip"
  appcast 'https://github.com/clyang/welly/releases.atom',
          checkpoint: '47fc74ce4e81906bf418bbf8bc99160720572c9cf5a1ef053b71905bd8ab0b1c'
  name 'Welly'
  homepage 'https://github.com/clyang/welly'

  auto_updates true

  app 'Welly.app'

  zap trash: [
               '~/Library/Application Support/Welly',
               '~/Library/Caches/Welly',
               '~/Library/Caches/org.net9.Welly',
               '~/Library/Cookies/org.net9.Welly.binarycookies',
               '~/Library/Preferences/org.net9.Welly.plist',
             ]
end
