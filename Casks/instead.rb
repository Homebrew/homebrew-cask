cask 'instead' do
  version '2.2.0'
  sha256 'cde4a7d23ec3556baf98d73bfc5d2b8add3fad22cd5eb52a2d5c408ecc73aa73'

  # sourceforge.net/project/instead was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/instead/instead/#{version}/Instead-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/instead/rss',
          checkpoint: '30d9a7421211eee34e6ef971d4e69f0f1fc36e710afba6c8d1ba966b8e16bb37'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/'
  license :mit

  app 'Instead.app'
end
