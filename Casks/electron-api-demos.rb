cask 'electron-api-demos' do
  version '1.0.0'
  sha256 '8975ddc64581e16b6e5003f443a945902507d73cf22b5574f20ef23e58756112'

  url "https://github.com/electron/electron-api-demos/releases/download/v#{version}/electron-api-demos-mac.zip"
  appcast 'https://github.com/electron/electron-api-demos/releases.atom',
          checkpoint: 'a081ea1760868e5450df42ef26ef396cb534e89ba4490da2fb1a80266a5494fa'
  name 'Electron API Demos'
  homepage 'https://github.com/electron/electron-api-demos'
  license :unknown

  app 'Electron API Demos.app'
end
