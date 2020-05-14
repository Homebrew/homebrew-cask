cask 'stella' do
  version '6.1.2'
  sha256 'f9b7222bd21d4b00b45dc7917e40f9b936eaf2946246fc36a7671d409bea53ff'

  # github.com/stella-emu/stella/ was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
