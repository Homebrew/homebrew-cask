class Geektool < Cask
    version '3.1.1-311'
  sha256 'ef1a7439d91f0de9e459a4677c6f95fe35bd7e02c300adc9ce315b5590cbbfc9'

  url 'http://download.tynsoe.org/GeekTool-3.1.1-311.zip'
  appcast 'http://dl.dropboxusercontent.com/u/1760713/appcast/appcast.xml'
  homepage 'http://projects.tynsoe.org/en/geektool/'

    app 'GeekTool.app'
end
