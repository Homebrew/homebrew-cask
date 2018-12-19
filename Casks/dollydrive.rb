cask 'dollydrive' do
  version '4.2,42000'
  sha256 '9808eea1ca3bf784694aac2e5212a28fb84793954b33e72dfd3e401b9feffda0'

  url "https://sparkle.dollydrive.com/downloadcenter/DollyDrive_#{version.before_comma}_#{version.after_comma}_CERTIFIED.zip"
  appcast "https://www.dollydrive.com/dolly#{version.major}.xml"
  name 'DollyDrive'
  homepage 'https://www.dollydrive.com/'

  app 'DollyDrive.app'
end
