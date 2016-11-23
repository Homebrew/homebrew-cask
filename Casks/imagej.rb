cask 'imagej' do
  version '1.49'
  sha256 '539c816c10849cb9820663d46c28b9ae1d36f43a29cc50fe7b5d819e9e60dd44'

  url "https://imagej.nih.gov/ij/download/osx/ImageJ#{version.no_dots}.zip"
  name 'ImageJ'
  homepage 'https://imagej.nih.gov/ij/index.html'

  depends_on macos: '>= :mountain_lion'

  suite 'ImageJ'

  caveats do
    depends_on_java
  end
end
