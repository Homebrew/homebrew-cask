cask :v1 => 'layervault' do
  version :latest
  sha256 :no_check

  url 'https://client.layervault.com/latest_version'
  name 'LayerVault'
  homepage 'http://layervault.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LayerVault.app'
end
