cask 'keka' do
  version '1.0.10'
  sha256 '38b29ef0f44610cc8145bf41538b23cc2207f5d4248de40ec4236b81e8e6f0fb'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: 'e9fb90f00dec38642c198fdf8c965c2b6dd39e3c87788f47afdec145335c3857'
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
