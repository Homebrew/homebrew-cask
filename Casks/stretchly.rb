cask 'stretchly' do
  version '0.9.0'
  sha256 'd0190422159b2d8f0a60b330b25e3255e931c29d712c2f5e0d1ab3632828297b'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '83bbd263023d70c1105390158a4a891fee5080d46613699c723a0290a9ea3ce6'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
