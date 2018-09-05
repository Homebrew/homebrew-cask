cask 'dupeguru' do
  version '4.0.3'
  sha256 '805fa0e2ddf57ac7d7e79cebe893a3a505f24c28500a204d22eb2b6d3d889454'

  # download.hardcoded.net was verified as official when first introduced to the cask
  url "https://download.hardcoded.net/dupeguru_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru.appcast'
  name 'dupeGuru'
  homepage 'https://dupeguru.voltaicideas.net/'

  app 'dupeGuru.app'
end
