cask 'mailbutler' do
  version '2,1523-11286'
  sha256 'f44467d9e133a7a494a8363ff9f5da52fe9234f2b8516369189d1551b7595bc3'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
