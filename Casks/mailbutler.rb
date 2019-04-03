cask 'mailbutler' do
  version '2,1502-11042'
  sha256 '4b1ab6437876c50284cf6c28477cb9eabbb6c00d0346c71e65520203f7647f83'

  url "https://downloads.mailbutler.io/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end
