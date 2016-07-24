cask 'bitbar' do
  version '1.9.1'
  sha256 '72350013b295ef1fa4beb1374bd3d2bdc5a7335c42666e8592b574799f9ced65'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '67f819a46652dbf13da6178d1e9374a2d600893d7a828a28e372ce3ce7a4c8e3'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
