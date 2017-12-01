cask 'meshcommander' do
  version '0.4.7'
  sha256 '6f15b8c76f5f7cb5d8347cd1497463d8f7f20f6ddae564945ea71f38629282cd'

  # bintray.com was verified as official when first introduced to the cask
  url 'https://bintray.com/gomesjj/APPS/download_file?file_path=MeshCommander_0_4_7.dmg.zip'
  name 'MeshCommander'
  homepage 'http://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/'

  app 'MeshCommander.app'
end
