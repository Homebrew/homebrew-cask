cask :v1 => 'blender' do
  version '2.76a'
  sha256 '37b583d19eb16123065b62a7c05c574d9ebee2ff7497c1180466447ce6dab383'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
