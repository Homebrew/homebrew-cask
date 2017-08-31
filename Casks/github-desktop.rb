cask 'github-desktop' do
  version '0.8.0-364fa5b9'
  sha256 'beb280364ffbf7372579099b18816b05e6204650bc99c14a5c3461d1a8acf15d'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: 'ae5b274f6bb859cc3d3841e9c653683191b829d9115cf35646fd7e3a73d49b10'
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
