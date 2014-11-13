cask :v1 => 'djay' do
  version :latest
  sha256 :no_check

  url 'https://www.algoriddim.com/files/djay.zip'
  appcast 'http://www.algoriddim.com/djay-mac/releasenotes/appcast'
  homepage 'http://algoriddim.com/djay-mac'
  license :unknown

  app 'djay.app'
end
