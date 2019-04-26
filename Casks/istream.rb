cask 'istream' do
  version '1.1'
  sha256 '08d1dffaf1388f3fe112319d2499cad7274f898eea11d4240e7c92a6fe619139'

  url "https://bitbucket.org/florianbethke/istream/downloads/iStream_#{version}.zip"
  appcast 'https://bitbucket.org/florianbethke/istream/downloads/updateinfo.xml'
  name 'iStream'
  homepage 'https://bitbucket.org/florianbethke/istream'

  auto_updates true

  app 'iStream.app'

  delete '/Applications/iStream.app'
end
