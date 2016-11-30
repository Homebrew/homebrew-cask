cask 'stretchly' do
  version '0.5.0'
  sha256 '00ced334c9f1851738863097b6d3c5c57753ed4da1115295a59cffe3180bf658'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '196beefd3721b35d425280da73d1e58929f760eb1bb04b675a33e58f681bccd3'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
