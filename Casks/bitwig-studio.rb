cask 'bitwig-studio' do
  version '2.2.2'
  sha256 '4d55ed7f7ce1982e9b26efe0acfc2deb247cade5bc3bd74f2d7d25416c4302e3'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'

  zap trash: [
               '~/Library/Application Support/Bitwig',
               '~/Library/Caches/Bitwig',
               '~/Library/Logs/Bitwig',
             ]
end
