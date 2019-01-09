cask 'snes9x' do
  version '1.58'
  sha256 '4723eac4aee3774436d422fbf74206386f56fcc308954414b2ba7c29ac7a1d4f'

  # s9x-w32.de was verified as official when first introduced to the cask
  url "http://www.s9x-w32.de/dl/snes9x-#{version}-macosx-i386.zip"
  name 'Snes9x'
  homepage 'http://www.snes9x.com/'

  app "snes9x-#{version}-macosx-i386/Snes9x.app"
end
