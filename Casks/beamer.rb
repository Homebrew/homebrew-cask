cask :v1 => 'beamer' do
  version '2.1.2'
  sha256 'c88b6e15fc725174d3ffeb7212ab1ef3dbf6d77e3b03a717b84939727f30390e'

  url "http://tupil-beamer.s3.amazonaws.com/Beamer-#{version}.zip"
  name 'Beamer'
  appcast 'http://beamer-app.com/beamer2-appcast.xml'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
