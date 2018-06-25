cask 'stella' do
  version '5.1.2'
  sha256 '33d891136230a9e99d620dd725b85dbb6d985c0c433bf68a0611605434eb75aa'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
