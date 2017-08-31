cask 'instead' do
  version '3.1.2'
  sha256 '880d2e8f77a99cab8bac110cfb8473acf951c87b2bc26f8ac81870537e4174ae'

  # sourceforge.net/instead was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/instead/instead/#{version}/Instead-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/instead/rss?path=/instead',
          checkpoint: 'b0bb1b1c52f94f3661376bee867fea09f538a2ef0c5674b3f9acacc7364cdd0a'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end
