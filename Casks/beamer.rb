cask :v1 => 'beamer' do
  version :latest
  sha256 :no_check

  url 'http://beamer-app.com/download'
  appcast 'http://beamer-app.com/beamer2-appcast.xml'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
