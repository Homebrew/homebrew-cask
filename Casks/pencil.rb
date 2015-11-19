cask :v1 => 'pencil' do
  version '2.0.6'
  sha256 'dacd76c658b12101457d17a4ade0b3f9c6a012f8eddacd379c41e372545ffac6'

  # googlecode.com is the official download host per the vendor homepage
  url "https://evoluspencil.googlecode.com/files/Pencil-#{version}-mac.tar.bz2"
  name 'Pencil'
  homepage 'http://pencil.evolus.vn'
  license :gpl

  app 'Pencil.app'
end
