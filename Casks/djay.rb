cask :v1 => 'djay' do
  version :latest
  sha256 :no_check

  url 'https://www.algoriddim.com/files/djay.zip'
  appcast 'http://www.algoriddim.com/djay-mac/releasenotes/appcast'
  homepage 'http://algoriddim.com/djay-mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'djay Pro.app'
end
