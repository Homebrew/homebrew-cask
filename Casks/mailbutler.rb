cask 'mailbutler' do
  version '2,1415-10867'
  sha256 '5b9ebfa6517257e1a64e95c2f2cd6d332aad37fe7dec4840e4b7c3eb48d180a8'

  url "https://downloads.mailbutler.io/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end
