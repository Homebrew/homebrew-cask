cask 'darktable' do
  version '2.2.3'
  sha256 '1ebe9a9905b895556ce15d556e49e3504957106fe28f652ce5efcb274dadd41c'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: 'f225149b844fe6a48ee77247f1542271354c0496bd91ed447e57543b6f180e31'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
