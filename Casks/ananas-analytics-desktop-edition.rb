cask 'ananas-analytics-desktop-edition' do
  version '0.8.1'
  sha256 '2a5d6373369dfe2308fedcfb8ae3264ef02ace3fb905b20b20014021be53b153'

  # github.com/ananas-analytics/ananas-desktop was verified as official when first introduced to the cask
  url "https://github.com/ananas-analytics/ananas-desktop/releases/download/v#{version}/Ananas.Analytics.Desktop.Edition-#{version}.macos.dmg"
  appcast 'https://github.com/ananas-analytics/ananas-desktop/releases.atom'
  name 'Ananas Analytics Desktop Edition'
  homepage 'https://ananasanalytics.com/'

  app 'Ananas Analytics Desktop Edition.app'
end
