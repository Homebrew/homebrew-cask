cask 'stella' do
  version '6.2.1'
  sha256 'b3385d3f304ef4e77d7bc473e73749009b72190c42d827afe4b38f0d695f9070'

  # github.com/stella-emu/stella/ was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
