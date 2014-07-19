class GoogleChromeCanary < Cask
  version 'latest'
  sha256 :no_check

  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  homepage 'https://www.google.com/chrome/'

  link 'Google Chrome Canary.app'
end
