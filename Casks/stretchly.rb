cask 'stretchly' do
  version '0.20.0'
  sha256 'efc14533c61f1313dd45ca0edbd7b00b7357ff4e4626e581cf188e252512b58c'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
