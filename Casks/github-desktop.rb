cask 'github-desktop' do
  version '0.5.8-e55db469'
  sha256 '5fe19928d1a3bfe1d574441f0e4c9fe418c37e679b993b2ffa80818c29e784e4'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: 'fb08dc592aab2ed38af7067e628825219296486f6a89837a1fb9fb94f6b531b3'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'

  postflight do
    suppress_move_to_applications
  end

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
