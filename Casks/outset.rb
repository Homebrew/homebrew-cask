cask 'outset' do
  version '2.0.5'
  sha256 'e4ed6a0398295ba44ee1588caebaa6c855aabaed052b3cf930d69c792f219f0d'

  url "https://github.com/chilcote/outset/releases/download/v#{version}/outset-#{version}.pkg"
  appcast 'https://github.com/chilcote/outset/releases.atom',
          checkpoint: 'e95456adc46d0ec04aa6b12c528b56c53cc29a0c8f597e21fbd69cebc55fca63'
  name 'outset'
  homepage 'https://github.com/chilcote/outset'

  pkg "outset-#{version}.pkg"

  uninstall pkgutil: 'com.github.outset'
end
