cask 'keka' do
  version '1.0.9'
  sha256 'abdaf40c6ea1de14a052ce721fa7ebc786a35bbcd98fc4adfcda33325df8dbb5'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom',
          checkpoint: 'f77559d899ecfad0992417891104b856b2c1ad7c21041646b56c62c838ec3052'
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
