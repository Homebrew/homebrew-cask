cask 'infinit' do
  version :latest
  sha256 :no_check

  url 'https://download.infinit.io/macosx/app/Infinit.dmg'
  name 'Infinit'
  homepage 'https://www.infinit.io/'
  license :gratis

  app 'Infinit.app'

  zap delete: [
                '~/Library/Application Support/Infinit',
                '~/Library/Application Support/InfinitApplication',
                '~/Library/Caches/io.infinit.InfinitApplication',
                '~/Library/Preferences/io.infinit.InfinitApplication.plist',
              ]
end
