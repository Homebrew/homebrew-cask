cask 'mailbutler' do
  version '2,2715-13158'
  sha256 'e6fc2874b5f800386e654f91fec9e51892cde417338d818c449b677ef109a641'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
