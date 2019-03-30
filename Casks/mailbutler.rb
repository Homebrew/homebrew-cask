cask 'mailbutler' do
  version '2,1426-11036'
  sha256 'b2e9b38860756b5fe586d6bfefdb02418725aa7f366826997e26f1dff7f411fb'

  url "https://downloads.mailbutler.io/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end
