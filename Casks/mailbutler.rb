cask 'mailbutler' do
  version '2,3020-13965'
  sha256 '2d67fb2d1c348d506e15626fb51a04ce9b5c4cad8653da0d1f72d7b2a23b5a34'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
