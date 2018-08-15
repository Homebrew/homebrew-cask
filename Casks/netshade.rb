cask 'netshade' do
  version '7.2'
  sha256 'ada2f1e1b9a5b2dd814652bbab238b41683a3a4dd8ca7ef2003763f98606bfc8'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/changelog.php?prod=ns&format=std&warnpay=0'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  app 'NetShade.app'
end
