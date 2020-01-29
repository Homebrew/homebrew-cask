cask 'mailbutler' do
  version '2,2428-12778'
  sha256 'f06a66a7f76b1aba725655aebf8533bc9033be92422e4b1a49c286a352db5a5c'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
