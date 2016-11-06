cask 'stretchly' do
  version '0.4.0'
  sha256 '19d8fd0920bec5221f85b3b2e7868805c8c493e994f9864ccf8ec9a6b1f5da50'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '1c4244355d721e8f05a3f9c451f742a9e3f6cf7e463d252e0a4b2da000ec524b'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly'

  app 'stretchly.app'
end
