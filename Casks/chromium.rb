cask 'chromium' do
  version '637735'
  sha256 'df65972b1b61da82b757149923a95b78303c877e2bf4a144be4f0be0736cba0f'

  # commondatastorage.googleapis.com/chromium-browser-snapshots/Mac was verified as official when first introduced to the cask
  url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip"
  appcast 'https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media'
  name 'Chromium'
  homepage 'https://www.chromium.org/Home'

  app 'chrome-mac/Chromium.app'

  zap trash: [
               '~/Library/Preferences/org.chromium.Chromium.plist',
               '~/Library/Caches/Chromium',
               '~/Library/Application Support/Chromium',
               '~/Library/Saved Application State/org.chromium.Chromium.savedState',
             ]
end
