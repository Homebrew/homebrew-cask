cask 'darktable' do
  version '2.6.0'
  sha256 '47d6f1d9ae64394663ffd804692d6b6d6722b312712e938f103cb43f58625c42'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
