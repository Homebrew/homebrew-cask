cask 'netshade' do
  version :latest
  sha256 :no_check

  url 'http://raynersoftware.com/downloads/NetShade.app.zip'
  appcast 'https://secure.raynersw.com/appcast.php',
          :checkpoint => 'e25679e34ce737098f3c565e408bc6fb54d876ca10938a03099edc46e12229ab'
  name 'NetShade'
  homepage 'http://raynersoftware.com/netshade/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetShade.app'
end
