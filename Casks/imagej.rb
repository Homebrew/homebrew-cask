cask 'imagej' do
  version '1.49'
  sha256 '539c816c10849cb9820663d46c28b9ae1d36f43a29cc50fe7b5d819e9e60dd44'

  url "http://imagej.nih.gov/ij/download/osx/ImageJ#{version.delete('.')}.zip"
  name 'ImageJ'
  homepage 'http://imagej.nih.gov/ij/index.html'
  license :public_domain

  depends_on cask: 'java'
  depends_on macos: '>= :mountain_lion'

  suite 'ImageJ'
end
