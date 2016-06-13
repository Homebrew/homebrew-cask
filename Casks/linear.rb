cask 'linear' do
  version '1.4.0'
  sha256 'be8da670fe0d9d18f2fdd77e991ebc7978da880d7288ac0cf9e10dc73d7474d3'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          checkpoint: 'e5cd2647c6d176fc59333089785cd069a18a1b3017d3da974ad4c0f956c6f6ac'
  name 'Linear'
  homepage 'https://mikaa123.github.io/linear-website/'
  license :mit

  app 'linear.app'

  zap delete: [
                '~/.linear',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.linear.sfl',
                '~/Library/Application Support/linear',
                '~/Library/Caches/linear',
                '~/Library/Preferences/com.electron.linear.plist',
                '~/Library/Saved Application State/com.electron.linear.savedState',
              ]
end
