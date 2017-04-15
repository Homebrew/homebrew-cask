cask 'stretchly' do
  version '0.8.1'
  sha256 '91ea23edc565123365ca51b236b466e0ecd590c12d9296ce61b590f522660759'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '5f2804a12585ecec78e7ffe7fc8eb5f0990adc1c5e3016a34b97ca3e3efdd1b7'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
