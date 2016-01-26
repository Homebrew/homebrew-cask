cask 'cn3d' do
  version '4.3.1'
  sha256 '0d47a1ec7ee2e445d997eee2caa56f9cdffd68cba0384f5dd71edc00d8812df4'

  url "ftp://ftp.ncbi.nlm.nih.gov/cn3d/Cn3D-#{version}-OSX.zip"
  name 'Cn3D'
  homepage 'https://www.ncbi.nlm.nih.gov/Structure/CN3D/cn3d.shtml'
  license :public_domain

  app 'Cn3D.app'
end
