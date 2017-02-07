cask 'stretchly' do
  version '0.6.0'
  sha256 '8bcacef9e79471340a27ab8ee5d143a16bd42d9d0421564a3a6457b50602de46'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '0ffc2cfe39b8988774ecdef0816562d433523ab92fde1f1a42445a5075ccae1c'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
