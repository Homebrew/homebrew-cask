cask 'stretchly' do
  version '0.15.0'
  sha256 '24a5f972617826fe6f1db748019c3161062452d2e79c2b891fa6834dcb7f66fb'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: 'ed45690ec09e6b916b1df9170a49b74120f6562d06f16cb59bf049a23d1166cf'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
