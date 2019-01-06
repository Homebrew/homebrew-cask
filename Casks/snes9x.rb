cask 'snes9x' do
  version '1.58,i386'
  sha256 '4723eac4aee3774436d422fbf74206386f56fcc308954414b2ba7c29ac7a1d4f'

  # s9x-w32.de was verified as official when first introduced to the cask
  url "http://www.s9x-w32.de/dl/snes9x-#{version.before_comma}-macosx-#{version.after_comma}.zip"
  name 'Snes9x'
  homepage 'http://www.snes9x.com/'

  app 'Snes9x.app'
end
