cask 'outset' do
  version '2.0.3'
  sha256 '6e0e572bdd7b6d3c8378da3d13ed0ab0ea96db19251acbc4faa806926eefa9e4'

  url "https://github.com/chilcote/outset/releases/download/v#{version}/outset-#{version}.pkg"
  appcast 'https://github.com/chilcote/outset/releases.atom',
          checkpoint: 'd916798c95ff3d1190a5deb2a88179ca199b42d3352603aeb0d3ca0d6d383a0c'
  name 'outset'
  homepage 'https://github.com/chilcote/outset'

  pkg "outset-#{version}.pkg"

  uninstall pkgutil: 'com.github.outset'
end
