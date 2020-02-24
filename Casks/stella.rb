cask 'stella' do
  version '6.0.2'
  sha256 'a161d7ac4fa1b70d9029a401a35f900887217f686a51b1663b60d924f0f24439'

  # github.com/stella-emu/stella was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
