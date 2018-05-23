cask 'slicer' do
  version '4.8.1.26813,738961'
  sha256 '3ed4c47aa032ed12dbba4151a55362c4d8a83a4bb2b03cb1026660053bdcd25a'

  # slicer.kitware.com/midas3 was verified as official when first introduced to the cask
  url "https://slicer.kitware.com/midas3/download?bitstream=#{version.after_comma}"
  appcast 'https://github.com/Slicer/Slicer/releases.atom',
          checkpoint: '0312d49a5ea7818787d0795b0ff9b5b4d9760624a226d47172a4026be0c9b96f'
  name '3D Slicer'
  homepage 'https://www.slicer.org/'

  app 'Slicer.app'
end
