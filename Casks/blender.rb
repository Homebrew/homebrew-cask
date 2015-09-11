cask :v1 => 'blender' do
  version '2.75'
  sha256 '78cec3ba19b7a37f1aae4e776169098127dccbd24bb1d12b53fbcd220d610ccc'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
