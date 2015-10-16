cask :v1 => 'chromium' do
  version :latest
  sha256 :no_check

  # appspot.com is the official download host per the vendor homepage
  url 'https://download-chromium.appspot.com/dl/Mac'
  name 'Chromium'
  homepage 'https://www.chromium.org/Home'
  license :oss

  app 'chrome-mac/Chromium.app'
end
