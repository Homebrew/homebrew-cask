cask :v1 => 'protonet' do
  version :latest
  sha256 :no_check

  url 'http://clients.protonet.info/osx/Protonet.dmg'
  name 'Protonet'
  homepage 'http://clients.protonet.info/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Protonet.app'
end
