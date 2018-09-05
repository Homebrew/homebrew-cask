cask 'qiniu-devtools' do
  version '3.1.20151125'
  sha256 '4a1ebcee5ea681e7d7e9f5544d7fe22e27240f70de9c0cd7cb790e8868a2b5f8'

  # devtools.qiniu.io was verified as official when first introduced to the cask
  url "http://devtools.qiniu.io/qiniu-devtools-darwin_amd64-v#{version}.tar.gz"
  name 'Qiniu Developer Tools'
  homepage 'https://developer.qiniu.com/'

  binary 'qetag'
  binary 'qrsboxcli'
  binary 'qrsctl'
  binary 'qrsync'
  binary 'qufopctl'
end
