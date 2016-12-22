cask 'aircall' do
  version '1.1.6'
  sha256 '29d1040a4fa30aafea783d4618c11377eb724992ea376b64a3ffb06ffe65e1c8'

  url "http://electron.aircall.io/download/#{version}/osx"
  appcast 'http://electron.aircall.io/update/osx/1.1.0',
          checkpoint: 'f4be0f81b7b52dc0d28e2ad20da81a4e1dc64c42b627e073f059a79bf7bb5344'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
