cask 'stretchly' do
  version '0.17.0'
  sha256 '3da764b3abc61f9cb7ae042f0bc85da17c99dd8ccadca216cd43652347187dfa'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
