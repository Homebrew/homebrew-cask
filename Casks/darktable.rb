cask 'darktable' do
  version '2.6.2'
  sha256 '8cd945744e56a85c35f982a96be42332a57dc383ec228fcc1d21eb57c068f27c'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
