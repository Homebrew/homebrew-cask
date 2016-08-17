cask 'anoncoin' do
  version '0.9.6.11'
  sha256 '8b4bb2d1b58e012d5f9b4f493c2f36bcd7bb75096fd70736c39f5d2b1aeaa94d'

  url "https://anoncoin.net/downloads/#{version}/Anoncoin-#{version}.dmg"
  name 'Anoncoin'
  homepage 'https://anoncoin.net'
  license :unknown

  app 'Anoncoin.app'

  zap delete: '~/Library/Application Support/Anoncoin/'
end
