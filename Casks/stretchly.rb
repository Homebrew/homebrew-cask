cask 'stretchly' do
  version '0.5.1'
  sha256 '9b480ff99c23b91067598b573f7f94bbbc9a79703471a53e2c02a77f546042ac'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '37bd240e647d53b8be14bbed20618f8dc1cf906d70a929cf841ffbc011f5e2d4'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
