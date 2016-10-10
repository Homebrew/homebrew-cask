cask 'chromium' do
  version :latest
  sha256 :no_check

  # download-chromium.appspot.com was verified as official when first introduced to the cask
  url 'https://download-chromium.appspot.com/dl/Mac?type=snapshots'
  name 'Chromium'
  homepage 'https://www.chromium.org/Home'

  app 'chrome-mac/Chromium.app'
  binary "#{appdir}/Chromium.app/Contents/MacOS/Chromium", target: 'chromium'

  zap delete: [
                '~/Library/Preferences/org.chromium.Chromium.plist',
                '~/Library/Caches/Chromium',
                '~/Library/Application Support/Chromium',
                '~/Library/Saved Application State/org.chromium.Chromium.savedState',
              ]
end
