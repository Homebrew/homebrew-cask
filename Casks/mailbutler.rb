cask 'mailbutler' do
  version '2,1405-10837'
  sha256 '0210927c43b279eb253ba31fe502773352db313c94ff2942700f0ae693145bb6'

  url "https://downloads.mailbutler.io/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'MailButler.app'
end
