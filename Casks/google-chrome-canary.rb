class GoogleChromeCanary < Cask
  homepage 'https://tools.google.com/dlpage/chromesxs'

  edge do
    url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
    install :app => 'Google Chrome Canary.app'
  end
end
