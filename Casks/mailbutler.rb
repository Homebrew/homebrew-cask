cask 'mailbutler' do
  version '2,1419-10915'
  sha256 '459e8f8c8eb18db1d78aa9c908a7cf856c514e47f3336d31d7767a15d84e23c4'

  url "https://downloads.mailbutler.io/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end
