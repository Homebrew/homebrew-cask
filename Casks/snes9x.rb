cask 'snes9x' do
  version '1.53'
  sha256 '48b0cbec848e7c2a24de1b30819dc150b62e354600cbcc0a6a5e2cf8e1de48ff'

  # s9x-w32.de is the official download host per the vendor homepage
  url "http://www.s9x-w32.de/dl/snes9x-#{version}-macosx-113.dmg.gz"
  name 'Snes9x'
  homepage 'http://www.snes9x.com/'
  license :other

  container nested: "snes9x-#{version}"

  app 'Snes9x.app'
end
