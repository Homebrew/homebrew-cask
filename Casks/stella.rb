cask 'stella' do
  version '6.0'
  sha256 'e138c46ee8a357f8d46f9b3553bb204ecb7c9728bd50263865381ce651531214'

  # github.com/stella-emu/stella was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
