cask 'darktable' do
  version '2.4.3.1'
  sha256 '290ed5473e3125a9630a235a4a33ad9c9f3718f4a10332fe4fe7ae9f735c7fa9'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
