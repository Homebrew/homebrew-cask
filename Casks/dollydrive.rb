cask 'dollydrive' do
  version '3.97,39700'
  sha256 '7b9ff26dd871ea7b899875707539c99d61060818669bbbe4906fa77a7e49c3ac'

  url "http://dollydrive.com/download-center/dollydrive/DollyDrive_#{version.before_comma}_#{version.after_comma}_CERTIFIED.zip"
  appcast "http://www.dollydrive.com/dolly#{version.major}.xml",
          checkpoint: '1ced9e101f9709ba80ab6303e71b8fba4a1c4f95374838b1c1c3803b0f870d10'
  name 'DollyDrive'
  homepage 'http://www.dollydrive.com/'

  app 'DollyDrive.app'
end
