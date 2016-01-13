cask 'netshade' do
  version :latest
  sha256 :no_check

  url 'http://raynersoftware.com/downloads/NetShade.app.zip'
  appcast 'https://secure.raynersw.com/appcast.php',
          :checkpoint => 'a41186f3b0469ae6128af14b783c3710d6d07d0aed581e2cb3e5e0ae0d058bbb'
  name 'NetShade'
  homepage 'http://raynersoftware.com/netshade/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetShade.app'
end
