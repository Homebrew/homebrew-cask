cask 'stella' do
  version '6.1.1'
  sha256 'e5500dbbb5773a7d30158e43c71e656e61ee3f82cd243c1a0daa667a4d5f835f'

  # github.com/stella-emu/stella/ was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
