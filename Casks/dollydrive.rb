cask 'dollydrive' do
  version '3.96,39625'
  sha256 '87d3925035f8af2a410c035f426d1e47115d119fb08f4a5e14e4972399263a71'

  url "http://dollydrive.com/download-center/dollydrive/DollyDrive_#{version.before_comma}_#{version.after_comma}_CERTIFIED.zip"
  appcast "http://www.dollydrive.com/dolly#{version.major}.xml",
          checkpoint: '4e4d8683c5b445f35a83f963c82963d70b68bc16b8235d0db37788eda253de88'
  name 'DollyDrive'
  homepage 'http://www.dollydrive.com/'

  app 'DollyDrive.app'
end
