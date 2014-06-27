class SparkInspector < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml'
  homepage 'http://sparkinspector.com/'

  link 'Spark Inspector.app'
end
