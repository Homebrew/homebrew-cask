cask 'stoplight-studio' do
  version '1.10.2'
  sha256 '8ef04ef92c26a95d23395ca3807cd1e00f2f9e10d2083be42a0ce7868aa43711'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
