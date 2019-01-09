cask 'shootersubx' do
  version '0.6.2'
  sha256 '51fe5dcc69f2936f5923f688445fb02f574abcfe9812e6384e6029ff90fec06e'

  url "https://github.com/songzhou21/ShooterSubX/releases/download/#{version}/ShooterSubX.app.zip"
  appcast 'https://github.com/songzhou21/ShooterSubX/releases.atom'
  name 'ShooterSubX'
  homepage 'https://github.com/songzhou21/ShooterSubX'

  app 'ShooterSubX.app'
end
