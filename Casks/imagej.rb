cask :v1 => 'imagej' do
  version '1.48'
  sha256 'f93c1a518f7aada24cfd648d65601e33aea99ae97a0646bd6151db1b567a7986'

  url "http://imagej.nih.gov/ij/download/osx/ImageJ#{version.gsub('.','')}.zip"
  name 'ImageJ'
  homepage 'http://imagej.nih.gov/ij/index.html'
  license :public_domain

  suite 'ImageJ'
  depends_on :cask => 'java'
end
