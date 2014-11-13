cask :v1 => 'chromium' do
  version :latest
  sha256 :no_check

  url 'https://download-chromium.appspot.com/dl/Mac'
  homepage 'http://www.chromium.org/Home'
  license :oss

  app 'chrome-mac/Chromium.app'
end
