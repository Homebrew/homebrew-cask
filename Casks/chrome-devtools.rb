cask :v1 => 'chrome-devtools' do
  version '1.1.0'
  sha256 'decb98cf06ed9dd65301449347e788dd757315460cf3c77ad91ceb3ef503831a'

  url "https://github.com/auchenberg/chrome-devtools-app/releases/download/v#{version}/chrome-devtools-app_#{version}.dmg"
  appcast 'https://github.com/auchenberg/chrome-devtools-app/releases.atom'
  name 'Chrome DevTools'
  homepage 'https://github.com/auchenberg/chrome-devtools-app'
  license :mit

  app 'Chrome DevTools.app'
end
