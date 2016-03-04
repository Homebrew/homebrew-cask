cask 'instead' do
  version '2.2.0'
  sha256 'cde4a7d23ec3556baf98d73bfc5d2b8add3fad22cd5eb52a2d5c408ecc73aa73'

  # sourceforge.net/project/instead was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/instead/instead/#{version}/Instead-#{version}.dmg"
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/'
  license :mit

  app 'Instead.app'
end
