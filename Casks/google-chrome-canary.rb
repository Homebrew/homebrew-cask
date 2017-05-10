cask :v1 => 'google-chrome-canary' do
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  homepage 'https://www.google.com/chrome/'
  license :gratis
  tags :vendor => 'Google'

  app 'Google Chrome Canary.app'
end
