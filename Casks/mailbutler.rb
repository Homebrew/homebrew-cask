cask 'mailbutler' do
  version '2,2721-13245'
  sha256 '20f2deb7b1f8bc8404640c225ab4e9c003410939d15680f5b870a6003feff9bd'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
