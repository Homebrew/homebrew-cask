cask 'insteadman' do
  version '3.1.0'
  sha256 '7e236a9bd2f25187179f2a3e2adc18e087315a2f1b2aea3cdb9e9a5181ba7441'

  # github.com/jhekasoft/insteadman3 was verified as official when first introduced to the cask
  url "https://github.com/jhekasoft/insteadman3/releases/download/v#{version}/InsteadMan-#{version}.dmg"
  appcast 'https://github.com/jhekasoft/insteadman3/releases.atom',
          checkpoint: '1581287c8be5a45dc22abd1a4e45484eaaa0e7d2220fd319aa7abada781c6ef8'
  name 'InsteadMan'
  homepage 'http://jhekasoft.github.io/insteadman/en/'

  app 'InsteadMan.app'
end
