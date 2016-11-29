cask 'cfxr' do
  version '0.2.1'
  sha256 '106e06fe1c76581ffb89b3f44419a1669526edb1609f54022390b22d0947a1f2'

  # github.com/downloads/nevyn/cfxr was verified as official when first introduced to the cask
  url "https://github.com/downloads/nevyn/cfxr/cfxr%20#{version}.zip"
  appcast 'https://github.com/nevyn/cfxr/releases.atom',
          checkpoint: '8df7001dcf306208bbaff94b3348320ac1771efc59fe61c6704b07aca238ebbe'
  name 'cfxr'
  homepage 'http://thirdcog.eu/apps/cfxr'

  app 'cfxr.app'
end
