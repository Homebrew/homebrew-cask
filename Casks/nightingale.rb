cask 'nightingale' do
  version '1.12.1-2454'
  sha256 'f1a07e5bb6e069ac2f9fdc89c7708d3badb3b41e27199920a6d55b462764c454'

  # github.com/nightingale-media-player/nightingale-hacking was verified as official when first introduced to the cask
  url "https://github.com/nightingale-media-player/nightingale-hacking/releases/download/nightingale-#{version.major_minor_patch}/Nightingale_#{version}_macosx-i686.dmg"
  appcast 'https://github.com/nightingale-media-player/nightingale-hacking/releases.atom',
          checkpoint: '4b1ee6d24b9052faa6389f2deb6c63c05a8b544229ba72fed3de43ff59f316c8'
  name 'Nightingale'
  homepage 'https://getnightingale.com/'

  app 'Nightingale.app'
end
