cask 'macdown' do
  version '0.6.2'
  sha256 '33701539d252c29b1642b59fead311b86a05158854aa122ed286065e7f6fc85b'

  # github.com/uranusjr/macdown was verified as official when first introduced to the cask
  url "https://github.com/uranusjr/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/uranusjr/macdown/releases.atom',
          checkpoint: '0477e464f915b632bc05966556842fb76a64b67e39b35347249102ae24460618'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'

  app 'MacDown.app'
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap delete: [
                '~/Library/Caches/com.uranusjr.macdown',
                '~/Library/Preferences/com.uranusjr.macdown.plist',
                '~/Library/Preferences/com.uranusjr.macdown.LSSharedFileList.plist',
                '~/Library/Application Support/MacDown',
              ]
end
