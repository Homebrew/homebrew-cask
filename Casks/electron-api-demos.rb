cask 'electron-api-demos' do
  version '1.2.0'
  sha256 '8786676a84ccb26671d08eb2c887ee777b616f7f966ff7125a43beada1ea4437'

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  appcast 'https://github.com/electron/electron-api-demos/releases.atom',
          checkpoint: '946f0f43ee3417ad0978e0e16ef43e3ffdcd3d6a698437632f6ebc89aec2326d'
  name 'Electron API Demos'
  homepage 'https://github.com/electron/electron-api-demos'

  app 'Electron API Demos.app'

  zap delete: [
                '~/Library/Application Support/Electron API Demos',
                '~/Library/Caches/com.electron.electron-api-demos',
                '~/Library/Saved Application State/com.electron.electron-api-demos.savedState',
              ]
end
