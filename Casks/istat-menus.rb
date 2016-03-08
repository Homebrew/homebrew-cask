cask 'istat-menus' do
  version '5.11'
  sha256 '21ccfe981ac8beafeda0f6e782767239cc9202bc44596d6e5e3c956dc7f57232'

  # amazonaws.com/bjango was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  name 'iStats Menus'
  homepage 'https://bjango.com/mac/istatmenus/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStat Menus.app'
end
