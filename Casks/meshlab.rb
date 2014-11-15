cask :v1 => 'meshlab' do
  version '1.3.2'
  sha256 '4ea9f5d99bf1c55c870fe75919397e6788e441e0dcd564311089eb63f93ec989'

  url "https://downloads.sourceforge.net/project/meshlab/meshlab/MeshLab%20v#{version}/MeshLabMac_v132.dmg"
  homepage 'http://meshlab.sourceforge.net/'
  license :oss

  app 'meshlab.app'
end
