cask 'stretchly' do
  version '1.0.0'
  sha256 'ba2123a394c424a7cf2e4e812937ac231c8c972c789c0857dd861ecf30ad3e6b'

  # github.com/hovancik/stretchly/ was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
