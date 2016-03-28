cask 'bitbar' do
  version '1.9.1'
  sha256 '86f255d4f426159ec5b184dfdc27c06d6aa1a11ed3ce16cf08b5289115967467'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '39dc809ebfebcca0c7456d19f9991f07a386ada0fa92f964a897007114f4963c'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
