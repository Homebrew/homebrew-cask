cask 'iina' do
  version '0.0.4'
  sha256 'c2847263dce7103d620be132c6004822f2197a330eb85b85bc49ecfd9eebf5f7'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.zip"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '70901e8c6d313b114fe817b48aefa6e6aeac393b4aec577d562481f923a2b88e'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  app 'IINA.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl',
                '~/Library/Application Support/com.colliderli.iina',
                '~/Library/Caches/com.colliderli.iina',
                '~/Library/Preferences/com.colliderli.iina.plist',
                '~/Library/Saved Application State/com.colliderli.iina.savedState',
              ]
end
