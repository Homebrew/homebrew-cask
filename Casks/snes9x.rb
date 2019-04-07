cask 'snes9x' do
  version '1.59.2'
  sha256 'a987c3d7e87b3aabe4d252db356f98ca9dbf7d5a252312bb97ef3b5322833476'

  # s9x-w32.de was verified as official when first introduced to the cask
  url "http://www.s9x-w32.de/dl/snes9x-#{version}-macosx-i386.zip"
  name 'Snes9x'
  homepage 'http://www.snes9x.com/'

  app "snes9x-#{version}-macosx-i386/Snes9x.app"
end
