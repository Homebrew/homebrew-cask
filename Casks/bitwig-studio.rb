cask 'bitwig-studio' do
  version '2.1.1'
  sha256 'ada7a77b49bd416505fa91ccd9abcfee1c796910560e1b7f4d5c6012e748b947'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com/'

  app 'Bitwig Studio.app'

  zap delete: [
                '~/Library/Application Support/Bitwig',
                '~/Library/Caches/Bitwig',
                '~/Library/Logs/Bitwig',
              ]
end
