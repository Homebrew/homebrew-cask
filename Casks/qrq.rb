cask 'qrq' do
  version '0.3.1'
  sha256 '76712d07f2d61b5d382c4c0c02a0c067e752c745db6b931717b3eb1e42e5076a'

  url "https://fkurz.net/ham/qrq/qrq-#{version}.dmg"
  appcast 'https://fkurz.net/ham/qrq.html',
          checkpoint: 'c36fba76c3c6323d61214e05f7bc18586f2220dda51fdb57d972ed14be62fde5'
  name 'qrq'
  homepage 'https://fkurz.net/ham/qrq.html'

  app 'qrq.app'
end
