class Blender < Cask
  version '2.72'
  sha256 '07f77c68c171ec6c32af85ce8430c843dabd5d208c0d352bb15f6208fb77dab1'

  url "http://download.blender.org/release/Blender#{version}/blender-#{version}-OSX_10.6-x86_64.zip"
  homepage 'http://www.blender.org/'
  license :unknown

  app 'Blender/blender.app'
  app 'Blender/blenderplayer.app'
end
