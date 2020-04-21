cask 'mailbutler' do
  version '2,2718-13159'
  sha256 '94d1b744590a6e39d082d1cc7e5e5920d9782f4bc82a66a27f727c341627d140'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
