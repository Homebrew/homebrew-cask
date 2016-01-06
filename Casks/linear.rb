cask 'linear' do
  version '1.1.0'
  sha256 '2f725f9fd377d8c4ca22c6c59a53bdc6cfc7dc90328345ba7ec29166e8d6ec90'

  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          :sha256 => 'ab8d6067976c26aec6fac91da4739a39ca445656c5bdb9503f3aed27a2df6229'
  name 'Linear'
  homepage 'http://mikaa123.github.io/linear-website/'
  license :mit

  app 'linear.app'
end
