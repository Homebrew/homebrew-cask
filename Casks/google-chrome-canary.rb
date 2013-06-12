class GoogleChromeCanary < Cask
  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  homepage 'https://tools.google.com/dlpage/chromesxs'
  version 'latest'
  no_checksum
  link :app, 'Google Chrome Canary.app'
end
