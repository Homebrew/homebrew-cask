cask 'cloudcompare' do
  version :latest
  sha256 :no_check

  # asmaloney.com/download/cloudcompare-mac-os-x was verified as official when first introduced to the cask
  url 'https://asmaloney.com/download/cloudcompare-mac-os-x/'
  name 'CloudCompare'
  homepage 'http://www.danielgm.net/cc/'

  app 'CloudCompare.app'
  app 'ccViewer.app'
end
