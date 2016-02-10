cask 'slicer' do
  version '4.5.0-1,461633'
  sha256 '6159617cfae0bdf5d19fd7c7543806ae59393413cfdcd56f1db454e026f433c2'

  url "http://download.slicer.org/bitstream/#{version.after_comma}"
  name '3D Slicer'
  homepage 'https://www.slicer.org'
  license :bsd

  app 'Slicer.app'
end
