cask :v1 => 'blender' do
  version '2.76'
  sha256 '542bc7fe9871c5a8f80efd5b9657416eda45d3dbeb455189367303203da695c9'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
