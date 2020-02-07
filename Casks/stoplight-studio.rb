cask 'stoplight-studio' do
  version '1.9.1'
  sha256 'cf037e4d3d08e20ad581084afedfcd60cda0afe2bf54c7a57ec1062f887ce39c'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
