cask 'imagej' do
  version '1.50'
  sha256 '681bb1af1cc1797e2fe5eddd5828a38128d3fc5cf9ea05a268650466e2eb6b93'

  # wsr.imagej.net/distros/osx was verified as official when first introduced to the cask
  url "https://wsr.imagej.net/distros/osx/ImageJ#{version.no_dots}.zip"
  name 'ImageJ'
  homepage 'https://imagej.nih.gov/ij/index.html'

  depends_on macos: '>= :mountain_lion'

  suite 'ImageJ'

  caveats do
    depends_on_java
  end
end
