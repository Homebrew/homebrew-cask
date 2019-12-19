cask 'stoplight-studio' do
  version '1.7.0'
  sha256 'b4b035421d0808030e2e99fe6a7065f693060a5a1ca6acb26ae9c9fb3172a921'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
