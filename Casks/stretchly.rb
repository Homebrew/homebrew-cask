cask 'stretchly' do
  version '0.19.1'
  sha256 '9030b02d539bfa3697b4c50d820ebcfb6a28e7c9ed6e966538ca4d3151e2bca6'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
