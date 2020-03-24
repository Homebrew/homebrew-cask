cask 'stella' do
  version '6.1'
  sha256 'd6cf76e7e29240c631527f964b9d18c9a454485bef7a97ce5039b2465b0eab1c'

  # github.com/stella-emu/stella was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
