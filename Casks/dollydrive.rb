cask 'dollydrive' do
  version '3.99,39987'
  sha256 '3644739ed8dece5c2f9f1ff6d50bd184907599566e7a4c20a789959d86b03e3c'

  url "http://dollydrive.com/download-center/dollydrive/DollyDrive_#{version.before_comma}_#{version.after_comma}_CERTIFIED.zip"
  appcast "http://www.dollydrive.com/dolly#{version.major}.xml",
          checkpoint: '69c3bbbc40c30294e9c2522add974a59ded347b23a87036b722aacb8e61a91c5'
  name 'DollyDrive'
  homepage 'http://www.dollydrive.com/'

  app 'DollyDrive.app'
end
