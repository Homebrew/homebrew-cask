cask :v1 => 'cheetah3d' do
  version :latest
  sha256 :no_check

  url 'http://cheetah3d.com/download/Cheetah3D.dmg'
  homepage 'http://www.cheetah3d.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cheetah3D.app'
end
