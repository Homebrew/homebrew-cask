cask 'stretchly' do
  version '0.20.1'
  sha256 '1c51f0aeb01bde477c23c7f9908e14729a6661fff78060f3bdda22b9e4609ea5'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
