cask 'linear' do
  version '1.5'
  sha256 'a449b498e552fcc9de0f42a360f894d26e1796ce44ab1dc150fc87acab10a9c2'

  # github.com/mikaa123/linear was verified as official when first introduced to the cask
  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom'
  name 'Linear'
  homepage 'https://linear.theuxshop.com/'

  app 'linear.app'

  zap trash: [
               '~/.linear',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.linear.sfl*',
               '~/Library/Application Support/linear',
               '~/Library/Caches/linear',
               '~/Library/Preferences/com.electron.linear.plist',
               '~/Library/Saved Application State/com.electron.linear.savedState',
             ]
end
