cask 'mounty' do
  version '1.7'
  sha256 '5eccbbea3f91c9646a6c9d1462137b68e9a81b8d860b3855011e9fe6dcc3f280'

  # mounty.app was verified as official when first introduced to the cask
  url 'https://mounty.app/releases/Mounty.dmg'
  name 'Mounty for NTFS'
  homepage 'http://www.enjoygineering.com/mounty/'

  app 'Mounty.app'
end
