class GoogleChromeCanary < Cask
  version 'latest'
  sha256 :no_check

  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  homepage 'http://www.google.com/intl/en/chrome/browser/canary.html'

  link 'Google Chrome Canary.app'
end
