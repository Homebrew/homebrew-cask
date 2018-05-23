cask 'devdogs' do
  version '0.2.1'
  sha256 '004cb15be88bbef2516d0ed3d75f6e4e198b5a0700ecfeba4131f34cc1cb869f'

  url "https://github.com/ragingwind/devdogs/releases/download/v#{version}/Devdogs-#{version}.zip"
  appcast 'https://github.com/ragingwind/devdogs/releases.atom',
          checkpoint: '6e2731d0405cd98e1e9242ba097893ddab3efa8dea80200da8c4c3f00cacc2d4'
  name 'Devdogs'
  homepage 'https://github.com/ragingwind/devdogs'

  app 'Devdogs.app'
end
