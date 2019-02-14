cask 'stretchly' do
  version '0.19.0'
  sha256 '02f50d36b062eb41270d907bcc96168f2fb18c30833d8d43770c8aaef96b4a8b'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
