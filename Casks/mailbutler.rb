cask 'mailbutler' do
  version '2,2916-13651'
  sha256 'edde104063edcd2394b205f9c000a0c5df50e7e1484f2f853c1a155d47065563'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
