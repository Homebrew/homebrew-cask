cask 'stretchly' do
  version '0.8.0'
  sha256 'c8a4a0a5108a98f981fdbf86535454282500ae4b0b3b9e4d6b25b784b9dedf6e'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '81a5c7150ce4b74bfa0d72d1774cd6e23d28e9bc9f7177d2d88cc483b8e76e1c'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
