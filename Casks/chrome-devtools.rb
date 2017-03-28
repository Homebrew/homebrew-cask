cask 'chrome-devtools' do
  version '1.1.0'
  sha256 'decb98cf06ed9dd65301449347e788dd757315460cf3c77ad91ceb3ef503831a'

  url "https://github.com/auchenberg/chrome-devtools-app/releases/download/v#{version}/chrome-devtools-app_#{version}.dmg"
  appcast 'https://github.com/auchenberg/chrome-devtools-app/releases.atom',
          checkpoint: 'cdbba9426341e0ad1d5b7a01c5f007091cc1d41bce9b50923166837d85f6d943'
  name 'Chrome DevTools'
  homepage 'https://github.com/auchenberg/chrome-devtools-app'

  app 'Chrome DevTools App.app'
end
