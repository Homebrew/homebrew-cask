cask :v1 => 'cheetah3d' do
  version :latest
  sha256 :no_check

  url 'http://cheetah3d.com/download/Cheetah3D.dmg'
  homepage 'http://www.cheetah3d.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Cheetah3D.app'
end
