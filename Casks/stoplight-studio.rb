cask 'stoplight-studio' do
  version '1.7.1'
  sha256 '88fb099cfa27be325652926dd77d9135ebca6ea9756ab919e9097353b3c683d6'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
