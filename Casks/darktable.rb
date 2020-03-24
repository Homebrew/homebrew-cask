cask 'darktable' do
  version '3.0.1.2'
  sha256 'a737973ad2ad619676874d86a599a2805431cd2a4e18169792d66c1746440d3c'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  conflicts_with cask: 'darktable-dev'

  app 'darktable.app'
end
