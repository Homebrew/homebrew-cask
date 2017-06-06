cask 'instead' do
  version '3.0.1'
  sha256 'ac4cf3ee747156a541b8050c9b3da0c8d57c1fe741a1c0ee5a3025897027dbbe'

  # sourceforge.net/instead was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/instead/instead/#{version}/Instead-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/instead/rss?path=/instead',
          checkpoint: 'd9aefb4fb9fd86981bef23f2974eaf85a18126c03290235ad860356f8095f472'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end
