cask :v1 => 'bitbar' do
  version '1.2.0'
  sha256 '1a5f3d72ed5f8225b2cd822ec84bb42778c178725871e5868cfc3bf473d56408'

  url "https://github.com/stretchr/bitbar/releases/download/#{version}/BitBar.zip"
  name 'BitBar'
  homepage 'https://github.com/stretchr/bitbar/'
  license :mit

  app 'BitBar.app'
end
