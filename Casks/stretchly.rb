cask 'stretchly' do
  version '0.21.0'
  sha256 '3bddd917ccc53d18ab35f7faf5b80e28c934c062831f92f4a71fcdc223bcd02b'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
