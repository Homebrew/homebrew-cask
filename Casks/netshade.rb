cask :v1 => 'netshade' do
  version :latest
  sha256 :no_check

  url 'http://raynersoftware.com/downloads/NetShade.app.zip'
  appcast 'https://secure.raynersw.com/appcast.php'
  name 'NetShade'
  homepage 'http://raynersoftware.com/netshade/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetShade.app'
end
