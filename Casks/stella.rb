cask 'stella' do
  version '6.2'
  sha256 'c8269959e9f24f59cca5862d83252f100a259247d7a60616d22c23b27a9600e5'

  # github.com/stella-emu/stella/ was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
