cask 'chromium' do
  version '596179'
  sha256 '4aac476233875efb22d0da8c081189727aceb624170f8e961cb5b13395fa60ae'

  # commondatastorage.googleapis.com/chromium-browser-snapshots was verified as official when first introduced to the cask
  url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip"
  appcast 'https://download-chromium.appspot.com/rev/Mac?type=snapshots'
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
