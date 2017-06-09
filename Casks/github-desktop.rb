cask 'github-desktop' do
  version '0.6.0-bde7470d'
  sha256 '2049b2124c809f0dbf4f236bc6e0267cfe225e6f562bcc51d5c35e7e9baf4c13'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: '50bc5a31cee692a059961f475ed8ca5d4de32f10d79a88fd54b46e36154edde4'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'

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
