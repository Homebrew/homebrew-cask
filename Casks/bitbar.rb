cask 'bitbar' do
  version '1.9.1'
  sha256 '72350013b295ef1fa4beb1374bd3d2bdc5a7335c42666e8592b574799f9ced65'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: 'e3e891b60d43bff854ddc78d7639323b42ce10c1a012a0b80b6b16dfc98e177e'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
