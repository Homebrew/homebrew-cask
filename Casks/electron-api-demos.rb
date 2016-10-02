cask 'electron-api-demos' do
  version '1.2.0'
  sha256 '8786676a84ccb26671d08eb2c887ee777b616f7f966ff7125a43beada1ea4437'

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  appcast 'https://github.com/electron/electron-api-demos/releases.atom',
          checkpoint: 'd166fad434b725bc4d31618a511e7104cc9cddeb405777068904d36b3158d848'
  name 'Electron API Demos'
  homepage 'https://github.com/electron/electron-api-demos'
  license :unknown

  app 'Electron API Demos.app'
end
