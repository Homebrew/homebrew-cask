cask 'mailbutler' do
  version '2,2610-13094'
  sha256 '074885810f78f2ae650da13411da662f9ccb812aabbd178ac1c2e192f676a925'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
