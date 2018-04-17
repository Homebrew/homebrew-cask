cask 'insteadman' do
  version '2.1.0'
  sha256 '6b083bdd6989fdaeb328da32663f9b595824b7ad1da24035ccb93d0db8262cbb'

  # github.com/jhekasoft/insteadman was verified as official when first introduced to the cask
  url "https://github.com/jhekasoft/insteadman/releases/download/v#{version}/InsteadMan-#{version}.dmg"
  appcast 'https://github.com/jhekasoft/insteadman/releases.atom',
          checkpoint: '2a4738377fcd128965aedaf73cba31ba6d11b8f12920044a29b30668f3b964bb'
  name 'InsteadMan'
  homepage 'http://jhekasoft.github.io/insteadman/en/'

  app 'InsteadMan.app'
end
