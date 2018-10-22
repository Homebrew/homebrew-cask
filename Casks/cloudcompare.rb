cask 'cloudcompare' do
  version '2.9.1'
  sha256 'c5223b04265802c90a8f81455e80d26f3406881e9e273372390eb42e37d4c62e'

  # asmaloney.com/download/cloudcompare-mac-os-x was verified as official when first introduced to the cask
  url 'https://asmaloney.com/download/cloudcompare-mac-os-x/'
  name 'CloudCompare'
  homepage 'https://www.danielgm.net/cc/'

  app 'CloudCompare.app'
  app 'ccViewer.app'
end
