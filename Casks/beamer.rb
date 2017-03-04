cask 'beamer' do
  version '3.2'
  sha256 '9845a8ad4d2b1af6ac32f5cc49b6c1493001cacc805fa497ffd945e52cc38134'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml",
          checkpoint: '31537c790c764cc32149084d83e140c05ac965b419af154cda8674084cf01993'
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end
