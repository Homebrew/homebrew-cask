cask 'isteg' do
  version '1.6.2'
  sha256 '5f385efce3416c9df75c6d97a35de82b76d9c829c2956461dd2fc95ca843702d'

  url "http://www.hanynet.com/isteg-#{version}.zip"
  appcast 'http://www.hanynet.com/isteg/',
          checkpoint: 'c0a0d7f43bb66f02369da2938c41dbe8a46f41464017c4b3340df5dc72cf7a11'
  name 'iSteg'
  homepage 'http://www.hanynet.com/isteg/'

  app 'iSteg.app'
end
