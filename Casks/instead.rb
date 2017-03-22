cask 'instead' do
  version '2.4.1'
  sha256 'c9e7af048230da3f1390118a55ab13fa02a6915c0d15c1290cbb2d34a4ea176f'

  # sourceforge.net/instead was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/instead/instead/#{version}/Instead-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/instead/rss?path=/instead',
          checkpoint: '6941875157d2644ec6dac6163e6c4a60b130a585f6b38e1e79de46d8d0307d0a'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end
