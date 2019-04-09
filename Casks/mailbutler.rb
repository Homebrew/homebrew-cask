cask 'mailbutler' do
  version '2,1509-11062'
  sha256 'e3a52131538c8556dfbc19294f39e5234d955df657048ad1bee1c6683e173ac0'

  url "https://downloads.mailbutler.io/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end
