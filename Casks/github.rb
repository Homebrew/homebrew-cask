cask 'github' do
  version '1.0.5-21de72f2'
  sha256 '6df80e88a1633c632e2351729f5823b5c096c37f119217a928d8f7fc3724fd73'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: 'c45ec70a7a8004ead2958cced74d9378b6095cb30a6d89bc813d2c9caeb83496'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: 'github'

  zap delete: [
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl',
                '~/Library/Caches/com.github.GitHubClient',
                '~/Library/Caches/com.github.GitHubClient.ShipIt',
              ],
      trash:  [
                '~/Library/Application Support/GitHub Desktop',
                '~/Library/Application Support/com.github.GitHubClient',
                '~/Library/Application Support/com.github.GitHubClient.ShipIt',
                '~/Library/Preferences/com.github.GitHubClient.helper.plist',
                '~/Library/Preferences/com.github.GitHubClient.plist',
              ],
      rmdir:  '~/.config/git'
end
