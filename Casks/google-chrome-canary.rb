cask :v1 => 'google-chrome-canary' do
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  name 'Google Chrome Canary'
  homepage 'https://www.google.com/intl/en/chrome/browser/canary.html'
  license :gratis

  app 'Google Chrome Canary.app'
end
