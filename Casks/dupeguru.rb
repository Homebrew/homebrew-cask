cask 'dupeguru' do
  version '4.0.3'
  sha256 '805fa0e2ddf57ac7d7e79cebe893a3a505f24c28500a204d22eb2b6d3d889454'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          checkpoint: '45e83e6d46bbdec99cd4c9701c54195268d79d1507bd933ad40991d48fb6502f'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'

  app 'dupeGuru.app'
end
