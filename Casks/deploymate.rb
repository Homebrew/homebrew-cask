cask 'deploymate' do
  version '1.3.1'
  sha256 '6b8cfcb50ad123730a730ed3f212402bb68a53586056a5a50e6ff8b9368ef885'

  # amazonaws.com/deploymate was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.delete('.')}.zip"
  appcast 'http://www.deploymateapp.com/deploymate-updates.xml',
          checkpoint: '83474c787fd7b018f77890210bde1d866fc45692c6134182d38387d06cdbe032'
  name 'Deploymate'
  homepage 'http://www.deploymateapp.com'
  license :commercial

  app 'Deploymate.app'

  zap delete: [
                '~/Library/Caches/com.ivanvasic.deploymate',
                '~/Library/Preferences/com.ivanvasic.deploymate.plist',
                '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist',
              ]
end
