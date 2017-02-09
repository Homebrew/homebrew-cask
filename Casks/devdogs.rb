cask 'devdogs' do
  version '0.2.1'
  sha256 '004cb15be88bbef2516d0ed3d75f6e4e198b5a0700ecfeba4131f34cc1cb869f'

  url "https://github.com/ragingwind/devdogs/releases/download/v#{version}/Devdogs-#{version}.zip"
  appcast 'https://github.com/ragingwind/devdogs/releases.atom',
          checkpoint: 'a7376c6ffe714969b60b94a478fb74e8eb0a34fed5a4e372d566257bfc35dd52'
  name 'Devdogs'
  homepage 'https://github.com/ragingwind/devdogs'

  app 'Devdogs.app'
end
