cask 'stretchly' do
  version '0.14.0'
  sha256 '49a287788def78b583ede671d8d9d466d81136757af0722317b9b4c70daa2d81'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: 'e46e1a766556eb31c90b2f7165286dc61fb444dc63f743feb8bd71677a8e25a7'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
