cask 'mailbutler' do
  version '2,2512-12780'
  sha256 '23c0ce8991444c04aff68112e022233e976a4ae1b801d0ab1333ed1a26e98442'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
