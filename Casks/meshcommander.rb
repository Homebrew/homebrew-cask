cask 'meshcommander' do
  version '0.7.7'
  sha256 'ac104f6bd8c79786fdd371064fd6a2a892ba58851e60447a8ce83ad2bed6725c'

  # bintray.com/gomesjj/APPS/ was verified as official when first introduced to the cask
  url "https://bintray.com/gomesjj/APPS/download_file?file_path=#{version.major}.#{version.minor}#{version.patch}%2FMeshCommander.dmg.zip"
  appcast 'https://dl.bintray.com/gomesjj/APPS/',
          configuration: "#{version.major_minor}#{version.patch}"
  name 'MeshCommander'
  homepage 'https://www.devtty.uk/apple/Intel_Mesh_Commander_on_Mac_OS_X/'

  app 'MeshCommander.app'
end
