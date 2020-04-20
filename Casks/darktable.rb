cask 'darktable' do
  version '3.0.2'
  sha256 'b71dab1b4f0ad796055f6d725a82913ad08f609de6ca96d65dbe6ffbeecb6416'

  # github.com/darktable-org/darktable/ was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  conflicts_with cask: 'darktable-dev'

  app 'darktable.app'
end
