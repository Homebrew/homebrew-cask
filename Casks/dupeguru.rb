cask 'dupeguru' do
  version '4.0.3'
  sha256 '805fa0e2ddf57ac7d7e79cebe893a3a505f24c28500a204d22eb2b6d3d889454'

  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast',
          checkpoint: '805361d6344084dfdeb21be5e30a5b001054967320fa6e06afc5ba431d084a12'
  name 'dupeGuru'
  homepage 'https://www.hardcoded.net/dupeguru/'

  app 'dupeGuru.app'
end
