cask 'stretchly' do
  version '0.16.0'
  sha256 'b87e7cc798effc8ac5ca948679f1de693556893c6b44e6c42d99ea4a3d12eaf3'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '1835820d39bcdb08dc371830f798d2169db3bde1341fdebabbf85a2ef7f74d30'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
