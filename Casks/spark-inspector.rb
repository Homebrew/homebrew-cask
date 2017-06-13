cask 'spark-inspector' do
  version '1.5.1'
  sha256 '0d1cbe2d7727bfd50c48d06e47f18e83178d6d8e9f73b5eae756a9188b9e804f'

  url 'http://sparkinspector.com/downloads/sparkinspector.dmg'
  appcast 'http://sparkinspector.com/sparkle/feed.xml',
          checkpoint: 'ba24c6118bf341e62a5bf24576319222abcaa0d4203109a1d7780f2242858020'
  name 'Spark Inspector'
  homepage 'http://sparkinspector.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Spark Inspector.app'
end
