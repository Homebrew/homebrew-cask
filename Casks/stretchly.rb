cask 'stretchly' do
  version '0.13.0'
  sha256 'c2923f83bb340f1f948f4ebda2c1d724903a4cd1c275a5133206e4554908dec6'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: '039589c498b163116d42861f770e9db379e3137c4bb06c7cdefe83bc2c7d66af'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
