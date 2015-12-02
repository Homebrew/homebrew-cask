cask :v1 => 'blender' do
  version '2.76b'
  sha256 'ac5ceaafd2e357194457be767a2b4281af98db8b40e3b3c6fa9cda46c09457f0'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app "blender-#{version}-OSX_10.6-x86_64/Blender.app"
  app "blender-#{version}-OSX_10.6-x86_64/BlenderPlayer.app"
end
