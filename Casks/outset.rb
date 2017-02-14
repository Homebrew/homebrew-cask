cask 'outset' do
  version '2.0.4'
  sha256 '5eb8b302f18ca4e58bb72f1b453fb3f24b9e25edeb6919c7981b0107a6d3f51c'

  url "https://github.com/chilcote/outset/releases/download/v#{version}/outset-#{version}.pkg"
  appcast 'https://github.com/chilcote/outset/releases.atom',
          checkpoint: '903c1a982566afa247ebef340359a4c8789ae40b45aa47b64ed6f63070830fac'
  name 'outset'
  homepage 'https://github.com/chilcote/outset'

  pkg "outset-#{version}.pkg"

  uninstall pkgutil: 'com.github.outset'
end
