cask 'mailbutler' do
  version '2,2819-13559'
  sha256 '62f2368e7f0ce39cb9ad649c6c93ac2e339d16d7160ab76272c6acca03501b12'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
