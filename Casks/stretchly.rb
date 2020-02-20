cask 'stretchly' do
  version '0.21.1'
  sha256 'b3c36fcabbc33b13f9aca772c674301a3f13b1263318399bbb298565170030dd'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
