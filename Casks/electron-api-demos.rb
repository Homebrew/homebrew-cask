cask 'electron-api-demos' do
  version '1.1.0'
  sha256 '8692437acd8ed97ad5676f847fe8b74f4e66bc46f5397483dc77f0bc868fb61f'

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  appcast 'https://github.com/electron/electron-api-demos/releases.atom',
          checkpoint: '6c64b52c4780c47cb42ff016ae1b7c651bb4e77004a7904de7408aaad6381878'
  name 'Electron API Demos'
  homepage 'https://github.com/electron/electron-api-demos'
  license :unknown

  app 'Electron API Demos.app'
end
