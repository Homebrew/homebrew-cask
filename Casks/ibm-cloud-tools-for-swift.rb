cask 'ibm-cloud-tools-for-swift' do
  version :latest
  sha256 :no_check

  url 'http://cloudtools.bluemix.net/release'
  name 'IBM Cloud Tools for Swift'
  homepage 'http://cloudtools.bluemix.net'

  app 'IBM Cloud Tools for Swift.app'
end
