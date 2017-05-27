cask 'dollydrive' do
  version '3.94.12'
  sha256 '654c2b0d5a6eab71e6bf60769ace36f5c24b287d00ce8f5b6fcb47ac904825ee'

  url "http://dollydrive.com/download-center/dollydrive/DollyDrive_#{version.major_minor}_#{version.no_dots}_CERTIFIED.zip"
  appcast "http://www.dollydrive.com/dolly#{version.major}.xml",
          checkpoint: '3ff4fe0e5a38053b5179774599043aa76b718d6af4286d28ace8a8bce93524d1'
  name 'DollyDrive'
  homepage 'http://www.dollydrive.com/'

  app 'DollyDrive.app'
end
