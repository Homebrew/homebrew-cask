cask 'mailbutler' do
  version '2,2708-13157'
  sha256 '04d8406b5e0de5c7ae8415a01dbad1668e047972181a155c683ed33e657d1cc5'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
