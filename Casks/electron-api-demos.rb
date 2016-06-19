cask 'electron-api-demos' do
  version '1.0.1'
  sha256 '330de49fc6825e3f046203648f64adb418dcae2c12f0825251c703d2b3b889e5'

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  appcast 'https://github.com/electron/electron-api-demos/releases.atom',
          checkpoint: 'e6677e8aa7d5b0638a7a7c4addd9e4f37d6632e8926f2d99a24622df1813046d'
  name 'Electron API Demos'
  homepage 'https://github.com/electron/electron-api-demos'
  license :unknown

  app 'Electron API Demos.app'
end
