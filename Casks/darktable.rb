cask 'darktable' do
  version '2.6.3.1'
  sha256 'cb79d40f7fb03ff9b4701c5f28d5f4d91b102756f48d970354d7102740e36f6d'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
