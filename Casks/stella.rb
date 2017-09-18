cask 'stella' do
  version '5.0.2'
  sha256 'f09be7c5419276da275488a734fc5b27c3d37ac1bc0fe77445ec568f42f7fa26'

  # github.com/stella-emu/stella/releases/download was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom',
          checkpoint: '6bedf88b8daec318a44ecd520a27095db806df6d9b1b92494778883eb4be7713'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
