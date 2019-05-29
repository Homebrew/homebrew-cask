cask 'screentray' do
  version '1.5.0'
  sha256 'e2d0fc8ff4fde4299c8c7b1815580c72432dda160eda5696c51c1086f712b10c'

  # github.com/DSnopov/screentray-distribution was verified as official when first introduced to the cask
  url "https://github.com/DSnopov/screentray-distribution/releases/download/v#{version}/ScreenTray-#{version}.dmg"
  appcast 'https://github.com/DSnopov/screentray-distribution/releases.atom'
  name 'ScreenTray'
  homepage 'https://screentray.com/'

  app 'ScreenTray.app'
end
