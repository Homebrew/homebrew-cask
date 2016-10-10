cask 'instead' do
  version '2.2.0'
  sha256 'cde4a7d23ec3556baf98d73bfc5d2b8add3fad22cd5eb52a2d5c408ecc73aa73'

  # sourceforge.net/instead was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/instead/instead/#{version}/Instead-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/instead/rss?path=/instead',
          checkpoint: '6941875157d2644ec6dac6163e6c4a60b130a585f6b38e1e79de46d8d0307d0a'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/'

  app 'Instead.app'
end
