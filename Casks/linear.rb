cask 'linear' do
  version '1.4.1'
  sha256 '57576222fba52a5fcaf35360c28a81d36a6b2abd3938a11574a7a041dea3cbdc'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          checkpoint: '7abff407ef82bea4ee878441a10ff6172341414d866b46d3fda6da5533c1d92d'
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
