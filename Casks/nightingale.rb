cask 'nightingale' do
  version '1.12.1-2454'
  sha256 'f1a07e5bb6e069ac2f9fdc89c7708d3badb3b41e27199920a6d55b462764c454'

  # github.com/nightingale-media-player/nightingale-hacking was verified as official when first introduced to the cask
  url "https://github.com/nightingale-media-player/nightingale-hacking/releases/download/nightingale-#{version.major_minor_patch}/Nightingale_#{version}_macosx-i686.dmg"
  appcast 'https://github.com/nightingale-media-player/nightingale-hacking/releases.atom',
          checkpoint: 'a7a614d0364b1ba2ea3bbf25897e6df2cd428838168edf2527fddd961f467a51'
  name 'Nightingale'
  homepage 'https://getnightingale.com/'

  app 'Nightingale.app'
end
