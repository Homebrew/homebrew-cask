cask :v1 => 'beamer' do
  version '2.1.3'
  sha256 '206567494951e06aa85149957e5a73c98d07613c347b3930fd7d2980a48c43c4'

  url "http://tupil-beamer.s3.amazonaws.com/Beamer-#{version}.zip"
  name 'Beamer'
  appcast 'http://beamer-app.com/beamer2-appcast.xml'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
