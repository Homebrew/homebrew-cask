cask 'dollydrive' do
  version '3.99,39993'
  sha256 '187680f85ccb29cdb5bc790102f2f8e233e8499e0d73cd00f050b3a7bddaa6d0'

  url "http://dollydrive.com/download-center/dollydrive/DollyDrive_#{version.before_comma}_#{version.after_comma}_CERTIFIED.zip"
  appcast "http://www.dollydrive.com/dolly#{version.major}.xml",
          checkpoint: '4e410d256c5e9ae0ed3f51ae889b8b10eae644d0f52184206abfe9951379362c'
  name 'DollyDrive'
  homepage 'http://www.dollydrive.com/'

  app 'DollyDrive.app'
end
