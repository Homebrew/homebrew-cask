cask :v1 => 'blender' do
  version '2.76b'
  sha256 '60d0e6372782578f95c34ee0003a18df20d88c4c4df47e7b5e8814553c83c39a'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
