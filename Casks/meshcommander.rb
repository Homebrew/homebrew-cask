cask 'meshcommander' do
  version '0.6.0'
  sha256 '4dde5b78a4a50af7e60772ef9e0358af9467063453b1f772142ec8e5db4c5c81'

  # bintray.com/gomesjj/APPS was verified as official when first introduced to the cask
  url "https://dl.bintray.com/gomesjj/APPS/MeshCommander_#{version.no_dots}.dmg.zip"
  name 'MeshCommander'
  homepage 'https://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/'

  app 'MeshCommander.app'
end
