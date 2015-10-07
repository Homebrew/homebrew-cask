cask :v1 => 'protonet' do
  version :latest
  sha256 :no_check

  url 'http://clients.protonet.info/osx/Protonet.dmg'
  name 'Protonet'
  appcast 'http://clients.protonet.info/osx/stable/appcast.xml',
          :sha256 => 'a569e738ec99b7a684dbf2859f54bb57689b2a7c9df8b8d9c5865bfb5364cad3'
  homepage 'http://clients.protonet.info/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Protonet.app'
end
