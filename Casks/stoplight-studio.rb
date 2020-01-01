cask 'stoplight-studio' do
  version '1.7.3'
  sha256 'dd8c0ee6e80f7923d757c53f54abea2181c40c773647325256ca8d46ed34c1dc'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
