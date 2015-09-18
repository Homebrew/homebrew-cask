cask :v1 => 'blender' do
  version '2.75a'
  sha256 '5d120eac07a895fa80c7b022aceb0454e63d2e85b799d9e5b6e7acc79e742317'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
