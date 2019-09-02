cask 'stella' do
  version '6.0.1'
  sha256 '177773f4b2b1227cd09dd61dd77b222ea3e4d606136425c8c249d0791b6d1da4'

  # github.com/stella-emu/stella was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
