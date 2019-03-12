cask 'darktable' do
  version '2.6.1'
  sha256 'dec8ebd36b9747a84ffad119ca1fa92a197297dc7d54e9a03035da99a76f66e8'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  app 'darktable.app'
end
