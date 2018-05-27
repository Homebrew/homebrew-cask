cask 'stella' do
  version '5.1.2'
  sha256 '33d891136230a9e99d620dd725b85dbb6d985c0c433bf68a0611605434eb75aa'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom',
          checkpoint: '7ef53c4c02c4abbd71e2e5b986c90c4a155606bfccd61824b68f0721a46e9cd4'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
