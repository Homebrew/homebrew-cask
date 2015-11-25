cask :v1 => 'chromium' do
  version :latest
  sha256 :no_check

  # appspot.com is the official download host per the vendor homepage
  url 'https://download-chromium.appspot.com/dl/Mac?type=continuous'
  name 'Chromium'
  homepage 'https://www.chromium.org/Home'
  license :oss

  app 'chrome-mac/Chromium.app'

  zap :delete => [
                  '~/Library/Preferences/org.chromium.Chromium.plist',
                  '~/Library/Caches/Chromium',
                  '~/Library/Application Support/Chromium',
                  '~/Library/Saved Application State/org.chromium.Chromium.savedState'
                 ]
end
