cask 'stoplight-studio' do
  version '1.10.1'
  sha256 '1a24a7b846e8a1203f468646d717d420a97757a3ae092353ce822285b09fa129'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
