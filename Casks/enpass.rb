cask 'enpass' do
  version '5.5.7'
  sha256 'c93381bfa56d1f430f85ea70b760ab39fdf845e43e7921e4c0271003eebc2eda'

  # sinew.in was verified as official when first introduced to the cask
  url "https://dl.sinew.in/mac/setup/Enpass-#{version}.dmg"
  name 'Enpass'
  homepage 'https://www.enpass.io/'

  depends_on macos: '>= :mountain_lion'

  app 'Enpass.app'

  zap delete: [
                '~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop',
                '~/Library/Caches/in.sinew.Enpass-Desktop',
                '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
                '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState',
              ]
end
