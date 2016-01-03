cask 'protonet' do
  version :latest
  sha256 :no_check

  url 'http://clients.protonet.info/osx/Protonet.dmg'
  appcast 'http://clients.protonet.info/osx/stable/appcast.xml',
          :sha256 => '592f270de11c6ef85081388c2c23d89808654db75a3cd144373c2f656c308e2e'
  name 'Protonet'
  homepage 'http://clients.protonet.info/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Protonet.app'
end
