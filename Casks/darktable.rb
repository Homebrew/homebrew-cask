cask 'darktable' do
  version '2.2.0'
  sha256 '75d5f68fec755fefe6ccc82761d379b399f9fba9581c0f4c2173f6c147a0109f'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: 'ae7fffd947c8ed332a1e3e8d3a2daf06955d32bf455cd66cb518e4ef1617d20f'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
