cask 'marp' do
  version '0.0.10'
  sha256 'e099aac307ebb0b5e749353a8cc07673af2160314f35b9b829fe9086e3d218c8'

  # github.com/yhatt/marp was verified as official when first introduced to the cask
  url "https://github.com/yhatt/marp/releases/download/v#{version}/#{version}-Marp-darwin-x64.dmg"
  appcast 'https://github.com/yhatt/marp/releases.atom',
          checkpoint: '992f6e19f07b8f67e5025bd44e7a9ba14d37b7604218be8c0152d3d569f77296'
  name 'Marp'
  homepage 'https://yhatt.github.io/marp/'

  app 'Marp.app'

  zap delete: [
                '~/Library/Application Support/Marp',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.yhatt.marp.sfl',
                '~/Library/Preferences/jp.yhatt.marp.helper.plist',
                '~/Library/Preferences/jp.yhatt.marp.plist',
                '~/Library/Saved Application State/jp.yhatt.marp.savedState',
              ]
end
