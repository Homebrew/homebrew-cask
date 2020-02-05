cask 'stoplight-studio' do
  version '1.9.0'
  sha256 '79885346191807704edd66eaaa6ff3d486f179e19a4abfdc47f277037893c997'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
