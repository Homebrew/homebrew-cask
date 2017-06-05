cask 'darktable' do
  version '2.2.5'
  sha256 'f6e8601fca9a08d988dc939484d03e137c16dface48351ef523b5e0bbbaecf18'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.before_comma}/darktable-#{version.before_comma}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '5b86256bc067309c4369566eb13a4008fbe30cae578ddf7013aecbba8a9f3777'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
