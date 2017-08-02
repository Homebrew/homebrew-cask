cask 'github-desktop' do
  version '0.7.2-cb858085'
  sha256 'db9e760df911036f2c4da8a431e538a60a8cdbbd403328466d1755023e0e882b'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: 'f04269578ad367136edbd61a243c563115333a185af3ca78adfff2add3cba51f'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: 'github'

  zap delete: [
                '~/Library/Application Support/GitHub Desktop',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl',
                '~/Library/Application Support/com.github.GitHubClient',
                '~/Library/Application Support/com.github.GitHubClient.ShipIt',
                '~/Library/Caches/com.github.GitHubClient',
                '~/Library/Caches/com.github.GitHubClient.ShipIt',
                '~/Library/Preferences/com.github.GitHubClient.helper.plist',
                '~/Library/Preferences/com.github.GitHubClient.plist',
              ],
      rmdir:  '~/.config/git'
end
