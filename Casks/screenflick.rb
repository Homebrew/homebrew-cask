cask 'screenflick' do
  version '2.7.13'
  sha256 'ea833fbbb12d3bcc2d767e3171f5fc7c8b562ed65b12f9878009d685dc73f3cf'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: 'f8edb9b54c1d2374b43ef9a374ae11fe7d3001a05b177c9c5671ee7c303b18d0'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
