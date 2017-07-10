cask 'keka' do
  version '1.0.11'
  sha256 '3b4d136df8c8bf9a30ec2a5d15f6223eb0f55f1ffc1ef358ea49c8aa09a92329'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: '41cd85c996c54ca0d730ba17ae82c4eea4d40c0db45c0adb71675e662b04f123'
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
