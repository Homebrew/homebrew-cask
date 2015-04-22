cask :v1 => 'qrq' do
  version '0.3.1'
  sha256 '76712d07f2d61b5d382c4c0c02a0c067e752c745db6b931717b3eb1e42e5076a'

  url "http://fkurz.net/ham/qrq/qrq-#{version}.dmg"
  name 'qrq'
  homepage 'http://fkurz.net/ham/qrq.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'qrq.app'
end
