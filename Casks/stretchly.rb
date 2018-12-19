cask 'stretchly' do
  version '0.18.0'
  sha256 'd9a7ea15b83d2f52b63077c7981fdc736c4fbdee6225433273660c80416d87b4'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
