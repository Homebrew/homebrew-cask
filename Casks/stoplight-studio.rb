cask 'stoplight-studio' do
  version '1.4.2'
  sha256 '3436d9da8ee20dfbf2a69fe641c92214dabd2546935e8a5bc03c21d95e0fe7a7'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
