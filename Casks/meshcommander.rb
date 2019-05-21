cask 'meshcommander' do
  version '0.7.4'
  sha256 '01258821e3103eea0e499a411c2d86b3d6e00d5ce358953ef55be7b08e51b63d'

  # bintray.com/gomesjj/APPS was verified as official when first introduced to the cask
  url 'https://bintray.com/gomesjj/APPS/download_file?file_path=MeshCommander.dmg'
  name 'MeshCommander'
  homepage 'https://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/'

  app 'MeshCommander.app'
end
