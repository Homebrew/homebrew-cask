cask 'idagio' do
  version '0.0.92'
  sha256 '6ad889934457213d9cac30043cc331e0e00fe1fc41d8fbf87d7113a286ab4671'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end
