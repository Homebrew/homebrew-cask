cask 'aria-maestosa' do
  version '1.4.9'
  sha256 '3a8d8bc625a6e27b2312ff1c008e78b64c94faa5ef263c85c6005e72a98ec1bf'

  url "https://downloads.sourceforge.net/ariamaestosa/AriaMaestosa-osx-#{version}.zip"
  appcast 'https://sourceforge.net/projects/ariamaestosa/rss',
          checkpoint: '477668fd1065310b682c7ced2a01f4be95af808290674d9598ff2895122cad3a'
  name 'Aria Maestosa'
  homepage 'http://ariamaestosa.sourceforge.net'

  app "AriaMaestosa-#{version}/Aria Maestosa.app"
end
