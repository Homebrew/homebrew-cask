cask 'stretchly' do
  version '0.11.0'
  sha256 '6de1894590c12e9f8a0a7393a6fa28edbd9344baffc2d9c5e9674f12f233102e'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: 'abdfd168229c8cda8612a7487b183223c9b01dca3c2069641b281de0eb58e45b'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
