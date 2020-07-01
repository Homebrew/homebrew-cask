cask 'stoplight-studio' do
  version '1.13.0'
  sha256 '33a203044a8db4ee8eaaafe73b4e52e71a8f4ad3983aa758841a7be5548d4e00'

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
