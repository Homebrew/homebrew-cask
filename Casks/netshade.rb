cask 'netshade' do
  version '6.3.1'
  sha256 'e4cf41a28a97a58ef4c3cae97a6e5bb7e039acf740d457e0e46ae5eff8735ffb'

  url 'http://raynersoftware.com/downloads/NetShade.app.zip'
  appcast 'https://secure.raynersw.com/changelog.php?prod=ns&format=std&warnpay=0',
          checkpoint: '7ad23be85e4561f896bdba0743e1086d6b8f7b195ce0b7cea349cd210b0ce351'
  name 'NetShade'
  homepage 'http://raynersoftware.com/netshade/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetShade.app'
end
