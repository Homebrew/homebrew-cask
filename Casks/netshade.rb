cask 'netshade' do
  version '7.0.1'
  sha256 '834d0010f410144714775919c6299b8f9da63e9d8d7955bde9f294fbf42e4b4e'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/appcast.php',
          checkpoint: '23df6d2434d0053ad584d388ac124b9d7a89a1cf36ef9ead9cc540a64bc7ef0f'
  name 'NetShade'
  homepage 'http://raynersw.com/netshade.php'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'NetShade.app'
end
