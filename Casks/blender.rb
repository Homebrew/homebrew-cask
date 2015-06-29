cask :v1 => 'blender' do
  version '2.74'
  sha256 '5648c679ac40fe34560426aa6e533b94e832882c79abc06c442dc21e78e1cbc9'

  url "https://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
