cask 'spark-inspector' do
  version '1.5.1'
  sha256 '0d1cbe2d7727bfd50c48d06e47f18e83178d6d8e9f73b5eae756a9188b9e804f'

  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml'
  name 'Spark Inspector'
  homepage 'http://sparkinspector.com/'

  app 'Spark Inspector.app'
end
