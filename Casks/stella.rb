cask 'stella' do
  version '5.1.3'
  sha256 'ff78c6bea70bc3839d9645083c2eade21c935547d80bc2703d43a0b642d13223'

  # github.com/stella-emu/stella was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macosx.dmg"
  appcast 'https://github.com/stella-emu/stella/releases.atom'
  name 'Stella'
  homepage 'https://stella-emu.github.io/'

  app 'Stella.app'
end
