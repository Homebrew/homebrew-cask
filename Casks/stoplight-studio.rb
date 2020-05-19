cask 'stoplight-studio' do
  version '1.12.0'
  sha256 '6cf4a06dafacd94b8970051600e8ed3980cf0cea1913c740650a77b05d8bd745'

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
