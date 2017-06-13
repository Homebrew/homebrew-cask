cask 'keka' do
  version '1.0.8'
  sha256 'ad6ab5e3baf98ab33d56022a844d5a37747bef9767cf9d3a2ed646f8a85630ee'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: 'f362deea318251b1d8bbc659bb797690f94747c7fb030d51b37de6eb9f1e441f'
  name 'Keka'
  homepage 'http://www.kekaosx.com/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Keka.app'

  zap delete: [
                '~/Library/Application Support/Keka',
                '~/Library/Caches/com.aone.keka',
                '~/Library/Preferences/com.aone.keka.plist',
                '~/Library/Saved Application State/com.aone.keka.savedState',
              ]
end
