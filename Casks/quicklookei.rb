cask 'quicklookei' do
  version '1.8.1'
  sha256 'cb56a118409db5571ce15641904fdc7f6a44427db2f1a27debea242349587284'

  # exactcode.de is the official download host per the vendor homepage
  url "http://people.exactcode.de/~rene/mac/QuickLookEI-#{version}.zip"
  name 'QuickLookEI'
  homepage 'http://rene.rebe.de/2013-08-11/exactimage-quicklook-w-camera-raw-support/'
  license :oss

  qlplugin 'QuickLookEI.qlgenerator'
end
