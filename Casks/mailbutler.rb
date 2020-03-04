cask 'mailbutler' do
  version '2,2525-13060'
  sha256 '96ba38b143e23ade1bf8b494cfa9f17365f85f65e496df96b0d75219a95c59f2'

  url "https://downloads.mailbutler.io/sparkle/public/Mailbutler_#{version.after_comma}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php"
  name 'Mailbutler'
  homepage 'https://www.mailbutler.io/'

  depends_on macos: '>= :sierra'

  app 'Mailbutler.app'
end
