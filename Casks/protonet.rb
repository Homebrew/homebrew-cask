cask :v1 => 'protonet' do
  version '1.5'
  sha256 '057cc7a5e26738fc360a959b664de20208f6c45795968dd6c039ee7c895444be'

  url 'http://clients.protonet.info/osx/Protonet.dmg'
  name 'Protonet'
  homepage 'http://clients.protonet.info/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Protonet.app'
end
