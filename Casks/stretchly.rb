cask 'stretchly' do
  version '0.10.0'
  sha256 'a055d94ceb3b54ba2ea6bcf89ca7f9d5703866caaa50ca6f811d9eefdc350e81'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '26ac344151004fed93bdeac8e177836e03fe206ff946781de792c664ed40c3de'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
