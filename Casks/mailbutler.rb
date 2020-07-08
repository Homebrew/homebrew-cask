cask 'mailbutler' do
  version '2,3007-13895'
  sha256 'a8876a4732167e285888fc6a29495f19ae645ec48e04ca10e3cfd8f5c840cbff'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
