cask 'linear' do
  version '1.1.0'
  sha256 '2f725f9fd377d8c4ca22c6c59a53bdc6cfc7dc90328345ba7ec29166e8d6ec90'

  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  appcast 'https://github.com/mikaa123/linear/releases.atom',
          :checkpoint => '604b2fdad9d513e82c80ae1efccab182aa36335a7488b14eb753158969a6b571'
  name 'Linear'
  homepage 'https://mikaa123.github.io/linear-website/'
  license :mit

  app 'linear.app'
end
