cask 'outset' do
  version '2.0.5'
  sha256 'e4ed6a0398295ba44ee1588caebaa6c855aabaed052b3cf930d69c792f219f0d'

  url "https://github.com/chilcote/outset/releases/download/v#{version}/outset-#{version}.pkg"
  appcast 'https://github.com/chilcote/outset/releases.atom',
          checkpoint: '83da0d14e2858e696717362d7c51e4e470c9017fde80232f273a098d3a953a77'
  name 'outset'
  homepage 'https://github.com/chilcote/outset'

  pkg "outset-#{version}.pkg"

  uninstall pkgutil: 'com.github.outset'
end
