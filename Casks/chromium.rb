cask 'chromium' do
  version '665556'
  sha256 '093c466afd98f18b24608737ee67f9afa4fd9cebe052782181b3e49c310175ee'

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
