cask 'openmsx' do
  version '0.15.0'
  sha256 'ee429ff34ba85b79d15185f236fb89619f26441c140ca85885a97c925302abf4'

  # github.com/openMSX/openMSX/ was verified as official when first introduced to the cask
  url "https://github.com/openMSX/openMSX/releases/download/RELEASE_#{version.dots_to_underscores}/openmsx-#{version}-mac-x86_64-bin.dmg"
  appcast 'https://github.com/openMSX/openMSX/releases.atom'
  name 'openMSX'
  homepage 'https://openmsx.org/'

  app 'openMSX.app'
end
