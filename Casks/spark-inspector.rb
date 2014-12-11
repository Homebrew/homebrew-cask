cask :v1 => 'spark-inspector' do
  version :latest
  sha256 :no_check

  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml'
  homepage 'http://sparkinspector.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Spark Inspector.app'
end
