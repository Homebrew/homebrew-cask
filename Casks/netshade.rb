cask 'netshade' do
  version :latest
  sha256 :no_check

  url 'http://raynersoftware.com/downloads/NetShade.app.zip'
  appcast 'https://secure.raynersw.com/appcast.php',
          :sha256 => 'b55277abdc1326bf4e8b4e978b9d9b29b1b384ecbbc7f6024f1a280194634eba'
  name 'NetShade'
  homepage 'http://raynersoftware.com/netshade/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetShade.app'
end
