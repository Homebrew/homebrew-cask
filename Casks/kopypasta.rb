cask 'kopypasta' do
  version '1.4'
  sha256 'c00eeb9e976cd9963919b7755d1233b69e01270398c074d4d8611994aab9daa0'

  url 'http://kopypasta.com/updates/Kopypasta.dmg'
  appcast 'http://kopypasta.com/updates/update.rss'
  name 'kopypasta'
  homepage 'http://kopypasta.com/'

  app 'Kopypasta.app'
end
