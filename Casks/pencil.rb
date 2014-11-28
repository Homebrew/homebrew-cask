cask :v1 => 'pencil' do
  version '2.0.6'
  sha256 'dacd76c658b12101457d17a4ade0b3f9c6a012f8eddacd379c41e372545ffac6'

  url "https://evoluspencil.googlecode.com/files/Pencil-#{version}-mac.tar.bz2"
  homepage 'http://pencil.evolus.vn'
  license :oss

  app 'Pencil.app'
end
