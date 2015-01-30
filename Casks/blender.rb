cask :v1 => 'blender' do
  version '2.73a'
  sha256 '9c68aad9f1cb907d261d7577e3966079691ab6f8eb0da924e7bcc9b9d3229fa5'

  url "http://download.blender.org/release/Blender#{version.to_f}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'http://www.blender.org/'
  license :gpl

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
