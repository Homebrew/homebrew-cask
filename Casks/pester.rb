cask 'pester' do
  version '1.1b22'
  sha256 '13d86be514a8fe8287e5bd073eeab0dfdd3d52d10337a082622b5e9b1f380ba8'

  url "https://sabi.net/nriley/software/Pester-#{version}.dmg"
  appcast 'https://sabi.net/nriley/software/Pester/updates.xml',
          checkpoint: '585de88dbbbc6f29113b58a499287d45c9f31b1154364d4d9e2b4e2a926d4545'
  name 'Pester'
  homepage 'https://sabi.net/nriley/software/index.html#pester'

  app 'Pester.app'
end
